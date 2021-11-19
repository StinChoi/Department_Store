# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Item.destroy_all = messed up on intial set up following 11/17/21 lecture - Topics is an alias for items :)
Topic.destroy_all
Store.destroy_all

strom = Store.create(name: 'Nordstrom')
tar = Store.create(name: 'Target')
cees = Store.create(name: 'Macys')
sco = Store.create(name: 'Costco')

# # Making 5 random "faker" items for each store
5.times do
  name1 = Faker::Hipster.words
  name2 = Faker::Hipster.sentences
  topic_name = "#{name1} #{name2}"
  topic = strom.topics.create(
    name: topic_name
  )
end

  5.times do
    name1 = Faker::SlackEmoji.activity
    topic_name = "#{name1}"
    topic = tar.topics.create(
      name: topic_name
    )
  end

  5.times do
    name1 = Faker::Relationship.familial
    name2 = Faker::Hipster.sentences
    topic_name = "#{name1}#{name2}"
    topic = cees.topics.create(
      name: topic_name
    )
  end

  5.times do
    name1 = Faker::Food.dish
    name2 = Faker::Food.fruits
    topic_name = "#{name1}#{name2}"
    topic = sco.topics.create(
      name: topic_name
    )
  end

    