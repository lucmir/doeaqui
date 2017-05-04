# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

locations = Location.create([
  {
    state: "Minas Gerais",
    city: "Belo Horizonte",
    district: "Pampulha",
    street: "Mystreet",
    number: "123",
    complement: "1"
  },
  {
    state: "Minas Gerais",
    city: "Sete Lagoas",
    district: "Mangabeiras",
    street: "Mystreet",
    number: "321",
    complement: nil
  },
])

Charity.create([
  {
    name: "Foundation",
    description: "A foundation",
    location: locations.first
  },
  {
    name: "The Charity",
    description: "a charity",
    location: locations.last
  }
])
