# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kills = Band.create({name: "The Kills",genre: "Alternative"})
joel = Band.create({name: "Billy Joel",genre: "Classic Rock"})
shins = Band.create({name: "The Shins",genre: "Alternative"})


jones = Venue.create({name: "Jones Beach",city: "New York",state: "NY",family_friendly: true})
msg = Venue.create({name: "MSG",city: "New York",state: "NY",family_friendly: true})
big = Venue.create({name: "The Big Theater",city: "Atlanta",state: "GA"})

Event.create({date: "8/1/2015",alcohol_served: false,band: kills,venue: jones})
Event.create({date: "9/15/2015",alcohol_served: false,band: joel,venue: msg})
Event.create({date: "10/10/2015",band: shins,venue: big})