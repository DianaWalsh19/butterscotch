json.extract! item, :id, :productId, :title, :description, :price, :image_url, :category, :productType, :brand, :created_at, :updated_at
json.url item_url(item, format: :json)
