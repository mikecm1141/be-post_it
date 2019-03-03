FactoryBot.define do
  factory :user do
    sequence(:username)   { |n| "username#{n}" }
    sequence(:last_name)  { |n| "Last #{n}" }
    sequence(:first_name) { |n| "First #{n}" }
    sequence(:email)      { |n| "test#{n}@test.com" }
    password              { 'test' }
    password_confirmation { 'test' }
  end
end
