json.array!(@baby_animals) do |baby_animal|
  json.extract! baby_animal, :id, :title, :img_url, :description
  json.url baby_animal_url(baby_animal, format: :json)
end
