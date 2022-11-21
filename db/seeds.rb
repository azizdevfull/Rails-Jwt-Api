# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
    @narutos = Naruto.new(
        character: Faker::JapaneseMedia::Naruto.character,
        village: Faker::JapaneseMedia::Naruto.village,
        eye: Faker::JapaneseMedia::Naruto.eye
        
    )

    @narutos.save

end