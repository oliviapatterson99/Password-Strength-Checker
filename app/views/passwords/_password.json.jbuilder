json.extract! password, :id, :characters, :name, :strong, :created_at, :updated_at
json.url password_url(password, format: :json)
