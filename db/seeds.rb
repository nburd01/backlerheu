# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Discipline.destroy_all
Post.destroy_all

10.times do |r|
  user = User.create!(
    email: "a#{r}@yopmail.com",
    password: 'aaaaaa'
    );


  post = Post.create!(
    title: Faker::Movies::BackToTheFuture.quote,
    content: 'aaaaaa',
    post_url: 'https://s3.static-footeo.com/1200/uploads/sclerheu/gallery/72709234_2411099205648659_1072033552297623552_o__pz6mhj.jpg',
    tag_id: "tag #{r}",
    user_id: "user #{r}"
    );

end

Discipline.create(
          name: 'football', 
          discipline_img:'https://s3.static-footeo.com/1200/uploads/sclerheu/gallery/72709234_2411099205648659_1072033552297623552_o__pz6mhj.jpg',
          discipline_root:'football')
Discipline.create(
          name: 'beach soccer', 
          discipline_img:'https://fff.twic.pics/https://media.fff.fr/uploads/images/4d7125038d960b502bef5aa2bdc9021a.png?twic=v1/resize=730',
          discipline_root:'beach')
Discipline.create(
          name: 'futsal', 
          discipline_img:'https://fff.twic.pics/https://media.fff.fr/uploads/images/ecd02c5415985e752f4aad7c3b61086d.png?twic=v1/resize=730',
          discipline_root:'futsal')
Discipline.create(
          name: 'fitfoot', 
          discipline_img:'https://lfhf.fff.fr/wp-content/uploads/sites/15/2019/12/FitFoot-fille-611x378.png',
          discipline_root:'fitfoot')
Discipline.create(
          name: 'féminines', 
          discipline_img:'https://imgs.search.brave.com/sitYDMmQPE4PfL4UN-fseK8l4VLQ2TfgrGas5O8TIu8/rs:fit:639:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/V0UtaHlHNFVkdHhY/c2hkdk5oUW9nQUFB/QSZwaWQ9QXBp',
          discipline_root:'feminines')
Discipline.create(
          name: 'arbitrage', 
          discipline_img:'https://imgs.search.brave.com/urKZiDMJSGPgW8IfRrWlQpF68aoZ-YmoQG6naYDVSgU/rs:fit:766:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/aWlBSmpmaVA0czRW/a1gyVENDVlNRSGFF/bCZwaWQ9QXBp',
          discipline_root:'arbitrage')