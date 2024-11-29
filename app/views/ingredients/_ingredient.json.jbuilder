json.extract! ingredient, :id, :name, :image_url, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
