# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "deleting ordering_sessions"

OrderingSession.delete_all

puts "Adding ordering_sessions"

10.times { OrderingSession.create!(buyer: Faker::Name.name)}

puts "10 ordering_sessions added"
