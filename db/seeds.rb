# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

99.times do |n|
  first_name  = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email"#{n+1}@france.fr"
  password = Faker::Internet.password(8)
  User.create!(first_name:    first_name,
              last_name:      last_name,
              email:          email,
              password:       password)
end
