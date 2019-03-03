FactoryBot.define do
  factory :topic do
    sequence(:title) { |n| "Topic Title #{n}" }
    description      { Faker::Lorem.paragraph(2) }
  end
end
