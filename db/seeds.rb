# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Complain.destroy_all
User.destroy_all
Company.destroy_all

c = []
u = []

20.times do
  c << Company.create(name: Faker::Company.name)
end

30.times do
  u << User.create(name: Faker::Superhero.name, email: Faker::Internet.email, password: '123456')
end

250.times do
  Complain.create(title: Faker::Lorem.sentence(3), company: c.sample, user: u.sample, created_at: Time.now - (rand*28).day)
end