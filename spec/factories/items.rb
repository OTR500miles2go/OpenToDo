FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    list
  end
end