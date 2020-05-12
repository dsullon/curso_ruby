json.extract! supplier, :id, :name, :tax_id, :address, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
