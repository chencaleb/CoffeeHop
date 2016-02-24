# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create({ name: 'Chicago' }, { name: 'Copenhagen' })
#   Mayor.create(name: 'Emanuel', city: cities.first)


university_list = 
  "Berkeley",
  "Los Angeles",
  "San Diego",
  "Davis",
  "Irvine",
  "Santa Barbara",
  "Santa Cruz",
  "Riverside",
  "Merced"


university_list.each do |name|
  University.create(name: name)
end

cafe_list = 
  "Blue Door",
  "FSM",
  "Milano",
  "Philz",
  "Strada",
  "MLK"


cafe_list.each do |name|
  Coffeeshop.create(name: name)
end