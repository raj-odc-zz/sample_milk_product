json.array!(@quantity_types) do |quantity_type|
  json.extract! quantity_type, :id, :name
  json.url quantity_type_url(quantity_type, format: :json)
end
