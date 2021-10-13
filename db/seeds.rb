# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/country.csv', headers: true) do |row|
  Place.create(
    code: row['code'],
    name_jp:row['name_jp'],
    name_en: row['name_en'],
    latitude: row['latitude'],
    longitude: row['longitude']
  )
end