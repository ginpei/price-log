json.array!(@experiences) do |experience|
  json.extract! experience, :id, :item_id, :prite
  json.url experience_url(experience, format: :json)
end
