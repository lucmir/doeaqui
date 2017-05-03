json.extract! charity, :id, :name, :description, :location_id, :created_at, :updated_at
json.url charity_url(charity, format: :json)
