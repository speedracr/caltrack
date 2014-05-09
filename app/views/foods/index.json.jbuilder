json.array!(@foods) do |food|
  json.extract! food, :id, :name, :calories_per_unit, :calories_per_g, :macros_carbs, :macros_protein, :macros_fat
  json.url food_url(food, format: :json)
end
