json.extract! sale, :id, :status, :total, :shippedDate, :created_at, :updated_at
json.url sale_url(sale, format: :json)
