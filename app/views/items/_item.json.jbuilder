json.extract! item, :id, :productId, :title, :description, :price, :image_url, :category, :productType, :brand, :supplierId, :created_at, :updated_at
json.url item_url(item, format: :json)
