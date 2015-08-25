# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create({name: "The Kills",genre: "Alternative"})

Venue.create({name: "Jones Beach",city: "New York",state: "NY",family_friendly: true})

Event.create({date: "8/1/2015",alcohol_served: false,band: Band.first,venue: Venue.first})