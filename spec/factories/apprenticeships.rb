FactoryBot.define do
  factory :apprenticeship do
    duration { Faker::Time.backward(days: 14, period: :evening) }
    observation { Faker::Lorem.sentence(word_count: 5) }
    user
    topic
  end
end
