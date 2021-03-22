json.extract! product, :id, :product_type_id, :manufacturer_id, :collection, :color, :uom_id, :discontinued, :created_at, :updated_at
json.url product_url(product, format: :json)
