json.array!(@dataunits) do |dataunit|
  json.extract! dataunit, :id, :geoValue, :dataValue, :dataset_id, :user_id
  json.url dataunit_url(dataunit, format: :json)
end
