# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.delete_all
puts "creating genres"

Genre.create(name: "Shitty pop", description: "prom all over again", mood: "looking for a cheap thrill in music form")
Genre.create(name: "Middle School Throwbacks", description: "braces, acne, and just an overall bad time", mood: "will you be my girlfriend? Circle Yes or No <3 lol!!!1!!1")
Genre.create(name: "Hardcore Emo", description: "bangs, eyeliner and skinny jeans", mood: "\"NOBODY UNDERSTANDS ME\"")
Genre.create(name: "Hipster", description: "i knew this artist before they were cool", mood: "everybody hates me, but that probably means im cool")

Artist.delete_all
puts "creating artists"

Artist.create(name: "Katy Perry", genres: Genre.where(name: "Shitty pop"))
Artist.create(name: "Kesha", genres: Genre.where(name:"Shitty pop"))
Artist.create(name: "Falloutboy", genres: Genre.where(name: "Hardcore Emo"))
Artist.create(name: "My Chemical Romace", genres: Genre.where(name: "Hardcore Emo"))



