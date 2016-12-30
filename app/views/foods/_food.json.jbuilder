json.extract! food, :id, :foodname, :category, :calories, :price, :created_at, :updated_at
json.url food_url(food, format: :json)