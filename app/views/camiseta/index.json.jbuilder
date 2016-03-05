json.array!(@camiseta) do |camisetum|
  json.extract! camisetum, :id, :nome, :medida_1
  json.url camisetum_url(camisetum, format: :json)
end
