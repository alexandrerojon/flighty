# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Airlines
airlines = Airline.create([
  {
    name: "Air France",
    image_url: "https://open-flights.s3.amazonaws.com/Air-France.png"
  },
  {
    name: "Lufthansa",
    image_url: "https://open-flights.s3.amazonaws.com/Lufthansa.png"
  },
  {
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  },
  {
    name: "KLM",
    image_url: "https://open-flights.s3.amazonaws.com/KLM.png"
  },
  {
    name: "Qatar Airways",
    image_url: "https://open-flights.s3.amazonaws.com/Qatar-Airways.png"
  },
  {
    name: "Emirates",
    image_url: "https://open-flights.s3.amazonaws.com/Emirates.png"
  }
])

#Reviews
reviews = Review.create([
  {
    title: "Incredible experience.",
    description: "Blown away by the level of service, I cannot wait to book them for my next trip.",
    score: 5,
    airline: airlines.first
  },
  {
    title: "Horrible! Stay away!",
    description: "While the physical quality was there, the service was just so inattentive! Considering the price, stay away!",
    score: 2,
    airline: airlines.last
  }
])
