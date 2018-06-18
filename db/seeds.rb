require 'random_data'
require 'faker'

Faker::UniqueGenerator.clear

User.create!(
  username: "simpleuser",
  name: "Any Person",
  email: "simple@email.com",
  password: "mypass123"
)

5.times do
  List.create!(
    title: RandomData.random_sentence,
    created_by: "Any Person",
    private: true, 
    user_id: "1"
  )
end 

for i in 1..5 do
  3.times do
    Item.create!(
      name: RandomData.random_sentence,
      done: false, 
      list_id: "#{i}"
    )
  end
end

puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"