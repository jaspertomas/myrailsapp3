json.array!(@cells) do |cell|
  json.extract! cell, :id, :x, :y, :type_id, :value
  json.url cell_url(cell, format: :json)
end
