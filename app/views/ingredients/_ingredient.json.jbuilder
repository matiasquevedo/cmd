json.extract! ingredient, :id, :name, :description, :quantity, :total_price, :food_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
