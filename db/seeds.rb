# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ADMIN
if User.all.any?
  p "user already exists"
else
  # if admin user doesnt exist
  p "create admin"
  user = User.new
  user.email = 'nikolai.lambsdorff@icloud.com'
  user.password = ENV['ADMIN_USER_PASSWORD']
  user.password_confirmation = ENV['ADMIN_USER_PASSWORD']
  user.save!
  p "new user created"
end


if !Project.all.any?
  p "create projects"
  Project.create!(
    title: "SimpleStocks",
    description: "iOS app for stock prices published in the AppStore.",
    link: "https://simplestockswebsite.herokuapp.com"
  )

Project.create!(
    title: "Lambsdorff Architektur",
    description: "Personal wesbite for a freelance Architectur.",
    link: "http://www.lambsdorff-architektur.de"
  )

Project.create!(
    title: "Blockchain VC Database",
    description: "WebApp for collection and analyzing 8,500 startups of 150 VC investors.",
  )

Project.create!(
    title: "Signature Ventures Website",
    description: "Complete redesign and rebuild of the Signature Ventures website.",
    link: "https://www.signatureventures.com"
  )
  p "projects created"
end
