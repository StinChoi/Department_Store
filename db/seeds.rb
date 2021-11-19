# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Item.destroy_all

Store.destroy_all

dept1 = Store.create(name: 'Nordstrom')
dept2 = Store.create(name: 'Target')
dept3 = Store.create(name: 'Macys')
dept4 = Store.create(name: 'Costco')

# # Making 5 random "faker" items for each store
5.times do
  name1 = Faker::Hipster.words
  name2 = Faker::Hipster.sentences
  item_name = "#{name1} #{name2}"
  dept1.items.create(
    name: item_name
  )
end

  5.times do
    name1 = Faker::SlackEmoji.activity
    item_name = "#{name1}"
    dept2.items.create(
      name: item_name
    )
  end

  5.times do
    name1 = Faker::Relationship.familial
    name2 = Faker::Hipster.sentences
    item_name = "#{name1}#{name2}"
    dept3.items.create(
      name: item_name
    )
  end

  5.times do
    name1 = Faker::Food.dish
    name2 = Faker::Food.fruits
    item_name = "#{name1}#{name2}"
    dept4.items.create(
      name: item_name
    )
  end

    