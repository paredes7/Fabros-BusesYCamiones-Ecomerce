<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\ProductMultimedia;
use Inertia\Inertia;
use Cloudinary\Api\Upload\UploadApi;
use Illuminate\Http\Request;

class AdminCategoryProductsController extends Controller
{
    public function index($categoryId)
    {
        $category = Category::select('id', 'name', 'description')->findOrFail($categoryId);

        $products = Product::where('category_id', $categoryId)
            ->with(['multimedia', 'variants.values.attribute'])
            ->select('id', 'name', 'description', 'longDescription', 'motor', 'potencia', 'transmision', 'peso', 'available')
            ->paginate(6)
            ->onEachSide(1);

        return Inertia::render('Admin/CategoryProducts', [
            'category' => $category,
            'products' => $products
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_id'   => 'required|exists:categories,id',
            'name'          => 'required|string|max:255',
            'description'   => 'nullable|string',
            'longDescription' => 'nullable|string',
            'motor'         => 'nullable|string|max:100',
            'potencia'      => 'nullable|string|max:50',
            'transmision'   => 'nullable|string|max:50',
            'peso'          => 'nullable|string|max:256',
            'files'         => 'nullable|array|max:10',
            'files.*'       => 'file|max:51200|mimes:jpeg,jpg,png,gif,webp,mp4,mov,avi',
            'documento'     => 'nullable|file|max:20480|mimes:pdf,doc,docx,xlsx',
        ]);

        $product = Product::create([
            'category_id'    => $request->category_id,
            'name'           => $request->name,
            'description'    => $request->description,
            'longDescription' => $request->longDescription,
            'motor'          => $request->motor,
            'potencia'       => $request->potencia,
            'transmision'    => $request->transmision,
            'peso'           => $request->peso,
            'available'      => 1,
        ]);

        $this->handleMultimediaUpload($request, $product);
        $this->handleDocumentoUpload($request, $product);

        return response()->json([
            'status'  => 'success',
            'product' => $product->load('multimedia')
        ]);
    }

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name'          => 'required|string|max:255',
            'description'   => 'nullable|string',
            'longDescription' => 'nullable|string',
            'motor'         => 'nullable|string|max:100',
            'potencia'      => 'nullable|string|max:50',
            'transmision'   => 'nullable|string|max:50',
            'peso'          => 'nullable|string|max:256',
            'files'         => 'nullable|array|max:10',
            'files.*'       => 'file|max:51200|mimes:jpeg,jpg,png,gif,webp,mp4,mov,avi',
            'removed_media_ids'   => 'nullable|array',
            'removed_media_ids.*' => 'exists:product_multimedia,id',
            'documento'     => 'nullable|file|max:20480|mimes:pdf,doc,docx,xlsx',
        ]);

        $product->update($request->only(
            'name', 'description', 'longDescription',
            'motor', 'potencia', 'transmision', 'peso'
        ));

        if ($request->filled('removed_media_ids')) {
            ProductMultimedia::whereIn('id', $request->removed_media_ids)->delete();
        }

        $this->handleMultimediaUpload($request, $product);

        if ($request->boolean('remove_documento')) {
            $product->multimedia()->where('multimedia_type_id', 7)->delete();
        }
        $this->handleDocumentoUpload($request, $product);

        return response()->json([
            'status'  => 'success',
            'product' => $product->load('multimedia')
        ]);
    }

    public function destroy(Product $product)
    {
        $product->multimedia()->delete();

        foreach ($product->variants as $variant) {
            $variant->values()->detach();
            $variant->delete();
        }

        $product->delete();

        return response()->json(['status' => 'success']);
    }

    public function destroyMultimedia($productId, $mediaId)
    {
        $media = ProductMultimedia::findOrFail($mediaId);
        $media->delete();

        return response()->json(['status' => 'success']);
    }

    private function handleMultimediaUpload(Request $request, Product $product)
    {
        if (!$request->hasFile('files')) return;

        $uploadApi = new UploadApi();

        foreach ($request->file('files') as $file) {
            $resourceType = str_starts_with($file->getMimeType(), 'video') ? 'video' : 'image';

            $upload = $uploadApi->upload($file->getRealPath(), [
                'folder'        => "products/{$product->id}",
                'resource_type' => $resourceType,
            ]);

            ProductMultimedia::create([
                'product_id'        => $product->id,
                'url'               => $upload['secure_url'],
                'type'              => $resourceType,
                'multimedia_type_id' => 1,
                'sort_order'        => 0,
            ]);
        }
    }

    private function handleDocumentoUpload(Request $request, Product $product)
    {
        if (!$request->hasFile('documento')) return;

        $uploadApi = new UploadApi();
        $file = $request->file('documento');

        $upload = $uploadApi->upload($file->getRealPath(), [
            'folder'          => "products/{$product->id}",
            'resource_type'   => 'raw',
            'use_filename'    => true,
            'unique_filename' => false,
        ]);

        $product->multimedia()->where('multimedia_type_id', 7)->delete();

        ProductMultimedia::create([
            'product_id'        => $product->id,
            'url'               => $upload['secure_url'],
            'type'              => 'document',
            'multimedia_type_id' => 7,
            'sort_order'        => 0,
            'title'             => $file->getClientOriginalName(),
        ]);
    }
}
