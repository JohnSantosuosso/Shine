# This file should contain all the record creation needed to seed the database with its default values.

50_000.times do |i|
  Customer.create!(
    first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
      string: Faker::Ancient.god,
      username: "#{Faker::Internet.user_name}#{i}",
       email: Faker::Internet.user_name + i.to_s + "@#{Faker::Internet.domain_name}")
  print '.' if i % 1000 == 0
end
puts