# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Team.create(name: "Team 1", season: "Winter")
t2 = Team.create(name: "Team 2", season: "Spring")
t3 = Team.create(name: "Team 3", season: "Summer")
t4 = Team.create(name: "Team 4", season: "Fall")

f1 = Fan.new
f1.name = "Fan 1"
f1.team = t1
f1.save

f2 = Fan.new
f2.name = "Fan 2"
f2.team = t4
f2.save

f3 = Fan.new
f3.name = "Fan 3"
f3.team = t2
f3.save
