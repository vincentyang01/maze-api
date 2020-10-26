# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'
require 'rest-client'
require 'json'

# getMaze = "http://maze-api.herokuapp.com/api/mazes/?cellShape=Square&width=20&height=20"
# data = JSON.parse( RestClient.get("#{getMaze}") )

# data[0]["dimensions"]
# data[0]["start"]
# data[0]["end"]
# data[0]["cellMap"]

User.destroy_all

User.create( name: "Beef", totalscore: 1000)
User.create( name: "Steven", totalscore: rand(950))
User.create( name: "Ian", totalscore: rand(950))
User.create( name: "Alex", totalscore: rand(950))
User.create( name: "Tashawn", totalscore: 30)
