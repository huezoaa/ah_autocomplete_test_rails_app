json.array!(@carros) do |carro|
  json.extract! carro, :id, :brand, :model, :year
  json.url carro_url(carro, format: :json)
end
