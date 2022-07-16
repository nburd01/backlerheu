# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

10.times do |r|
  user = User.create!(
    email: "a#{r}@yopmail.com",
    password: 'aaaaaa'
    );

end

Discipline.create(name: 'football');
Discipline.create(name: 'beach soccer');
Discipline.create(name: 'futsal');
Discipline.create(name: 'fitfoot');
Discipline.create(name: 'féminines');
Discipline.create(name: 'arbitrage')