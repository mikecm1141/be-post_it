[Topic, User, Post].each do |object|
  object.delete_all
end

3.times do
  Topic.create!(
    title: Faker::Device.unique.manufacturer,
    description: Faker::Lorem.paragraph(4)
  )
end

4.times do |n|
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.unique.username,
    email: Faker::Internet.unique.email,
    password: 'test',
    password_confirmation: 'test'
  )
end

30.times do |n|
  Post.create!(
    title: Faker::Lorem.sentence(10),
    body: Faker::Lorem.paragraph(rand(3..10)),
    topic: Topic.find_by_id(rand(1..3)),
    user: User.find_by_id(rand(1..4))
  )
end
