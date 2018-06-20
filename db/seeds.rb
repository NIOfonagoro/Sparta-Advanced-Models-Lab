4.times do
  Country.create(name: Faker::Address.country)
end
7.times do
  random_id = rand(1..Country.all.length)
  Author.create(first_name: Faker::Artist.name, last_name: Faker::Name.last_name, country_id: random_id)
end
10.times do
  random_id = rand(1..Author.all.length)
  random_year = rand(1970..2018)
  Book.create(title: Faker::Book.title, published_year: random_year, genre: Faker::Book.genre, author_id: random_id)
end

30.times do
  random_id = rand(1..Book.all.length)
  Chapter.create(title: Faker::StarWars.specie, book_id: random_id)
end

50.times do
  random_id = rand(1..Chapter.all.length)
  Paragraph.create(lorem: Faker::Lorem.sentence(1), chapter_id: random_id)
end
