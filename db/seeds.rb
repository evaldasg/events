# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create!([
  {
    name: "Learn some Ruby",
    location: "Vilnius",
    price: 0.00,
    description: "A fun and interactive introduction to Ruby event in Vilnius with a lot of great people to support your road to the Olympia",
    starts_at: "10.days.from_now"
  },
  {
    name: "Ruby meet",
    location: "Riga",
    price: 10.00,
    description: "The party after great introduction to the Ruby in Riga",
    starts_at: "15.days.from_now"
  },
  {
    name: "Create Rails App",
    location: "Kaunas",
    price: 25.00,
    description: "We are going to write our first Rails app which will be greatest in the World",
    starts_at: "20.days.from_now"
  },
  {
    name: "Deploy Rails App",
    location: "Berlin",
    price: 100.00,
    description: "We'll deployng our greatest App in the World to the World on Web",
    starts_at: "20.days.from_now"
  },
  {
    name: "Rails Crazy Dazzy",
    location: "Vilnius",
    price: 50.00,
    description: "There will be fun party for Rails team and developers in Vilnius all day and night.",
    starts_at: "25.days.from_now"
  }
])
