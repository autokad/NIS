json.array!(@geo_data) do |geo_datum|
  json.extract! geo_datum, :id, :geoId, :geoYear, :geoName, :geoValue, :dataId, :dataYear, :dataName, :dataValue
  json.url geo_datum_url(geo_datum, format: :json)
end
