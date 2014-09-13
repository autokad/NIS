json.array!(@maps) do |map|
  json.extract! map, :id, :name, :user_id, :dataset_id
  json.url map_url(map, format: :json)
end
