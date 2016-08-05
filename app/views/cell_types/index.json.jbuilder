json.array!(@cell_types) do |cell_type|
  json.extract! cell_type, :id, :name, :description, :values
  json.url cell_type_url(cell_type, format: :json)
end
