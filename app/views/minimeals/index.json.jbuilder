json.array!(@minimeals) do |minimeal|
  json.extract! minimeal, :id, :fooditem, :grams, :user, :date
  json.url minimeal_url(minimeal, format: :json)
end
