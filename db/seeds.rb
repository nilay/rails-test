# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
  Company.create(name: "#{Faker::Company.name} #{Faker::Company.suffix}")
end

100.times do
  City.create(name: Faker::Address.city, state: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY].sample)
end

company_ids = Company.all.pluck(:id)
city_ids = City.all.pluck(:id)
100.times do
  Person.create(
      name: Faker::Name.name,
      email: Faker::Internet.free_email,
      company_id: company_ids.sample,
      city_id: city_ids.sample
  )
end





# Faker::Internet.free_email