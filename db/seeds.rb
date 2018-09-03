# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


a = Art.new(name: 'Art')
a.save!
cl = Classic.new(name: 'Classic')
cl.save!
co = Coding.new(name: 'Coding')
co.save!
e = Example.new(name: 'Example')
e.save!
p = Playful.new(name: 'Playful')
p.save!
