5.times do
  first_name = Faker::Name.first_name()
  Recipe.create!(name: first_name, description: Faker::Lorem.paragraphs(number: 3), creation_date: DateTime.now)
end

20.times do
  first_name = Faker::Name.first_name()
  Ingredient.create!(name: first_name, recipe: Recipe.find(Recipe.ids.sample))
end
