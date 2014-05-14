json.array!(@minimeals) do |minimeal|
  json.extract! minimeal, :id, :food, :grams, :user, :date
  json.url minimeal_url(minimeal, format: :json)
end
