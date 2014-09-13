json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :geoName, :dataYear, :dataName, :user_id
  json.url dataset_url(dataset, format: :json)
end
