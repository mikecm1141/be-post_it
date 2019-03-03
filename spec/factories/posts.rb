FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Post Title #{n}" }
    body             { Faker::Lorem.paragraph(2) }
    topic            { create(:topic) }
    user             { create(:user) }
  end
end
