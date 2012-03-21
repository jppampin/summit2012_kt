# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Author.create( first_name: "Juan Pablo", last_name: "Pampin", email: "juan.pampin.picasso@accenture.com")
a2 = Author.create( first_name: "Luis", last_name: "Capra", email:"luis.roberto.capra@accenture.com")

cat1 = Category.create(name: "General")
cat2 = Category.create(name: "IT")

art1 = Article.new( title: "First Article", body: "This is the body of the first article" )
art1.categories << cat1
art1.author = a1

art2 = Article.new( title: "Second article", body: "This is the body of the second article")
art2.categories << cat1
art2.categories << cat2
art2.author = a2

art1.save
art2.save