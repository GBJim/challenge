json.array!(@details) do |detail|
  json.extract! detail, :id, :public, :title, :description, :priceNumber, :pricePer, :whatInclude, :whatExclude, :durationNumber, :durationUnit, :groupSize, :availability, :additionalInfo
  json.url detail_url(detail, format: :json)
end
