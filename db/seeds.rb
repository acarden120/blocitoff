# This file should contain database default values.
# The data can then be loaded with the rake db:seed
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

  # Create an admin user
 admin = User.new(
   name:     'Admin User',
   email:    'admin2@example.com',
   password: 'helloworld',
 )
 admin.skip_confirmation!
 admin.save!

  # Create an standard test user
 admin = User.new(
   name:     'Sharon Carden',
   email:    'test@example.com',
   password: 'abc123456',
 )
 admin.skip_confirmation!
 admin.save!

 # Create an standard test user
 admin = User.new(
   name:     'Alan Carden',
   email:    'test2@example.com',
   password: 'abc654321',
 )
 admin.skip_confirmation!
 admin.save!

10.times do 
	user = User.new(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Lorem.characters(10)
	)
	user.skip_confirmation!
	user.save!
end

users = User.all


20.times do
  item = Item.create(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
  item.update_attributes!(created_at: rand(10.minutes..1.years).ago)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"