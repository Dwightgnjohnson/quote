30.times do
  Quote.create(author: Faker::Name.name  , quote: Faker::Company.catch_phrase)
end
