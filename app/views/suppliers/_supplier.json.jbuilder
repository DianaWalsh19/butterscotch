json.extract! supplier, :id, :name, :email, :item_id, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
