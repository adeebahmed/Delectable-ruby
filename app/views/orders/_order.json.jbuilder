json.extract! order, :id, :foods, :total, :surcharge, :ship, :billing, :instructions, :status, :created_at, :updated_at
json.url order_url(order, format: :json)