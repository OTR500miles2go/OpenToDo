FactoryBot.define do
  factory :list do
    title { RandomData.random_sentence }
    created_by { RandomData.random_sentence }
    private { true }
    user
  end
end