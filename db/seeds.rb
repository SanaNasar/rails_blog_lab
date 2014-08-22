# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

yoda = Post.create({title: "Yoda", author: "Cody", description: "little green man"})
luke = Post.create({title: "Luke", author: "Cody", description: "Young Jedi"})
vader = Post.create({title: "Darth Vader",  author: "Cody", description: "Father of luke"})

luke.comments.create({name: "Mayer", description: "you must unlearn what you have learned"});
luke.comments.create({name: "Oh wow", description: "jedi's rock"})

comment = Comment.create({name: "Darkside!", description: "give into your anger"})
vader.comments << comment
