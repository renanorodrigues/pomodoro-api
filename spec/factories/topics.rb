FactoryBot.define do
  factory :topic do
    title { Faker::Educator.subject }
    description { Faker::Lorem.sentence(word_count: 5) }
    finished { :true }
    user
  end
end