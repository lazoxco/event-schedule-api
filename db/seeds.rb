# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

keynotes = Keynote.create([
  {title: "What is HTML?", speaker: "Captain America", description: "Learn the basics of HTML", date_time: "06/12/2022 9:00 AM"},
  {title: "What is CSS?", speaker: "Black Widow", description: "Learn the basics of CSS", date_time: "06/12/2022 10:00 AM"},
  {title: "What is JavaScript?", speaker: "Tony Stark", description: "Learn the basics of JavaScript", date_time: "06/12/2022 11:00 AM"}
])