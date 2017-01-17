# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question_1 = Question.create!(title: Faker::Hipster.paragraph(4), description: Faker::Hipster.paragraph(6))
question_2 = Question.create!(title: Faker::Hipster.paragraph(4), description: Faker::Hipster.paragraph(6))
question_3 = Question.create!(title: Faker::Hipster.paragraph(4), description: Faker::Hipster.paragraph(6))
question_4 = Question.create!(title: 'Javascript Page help needed', description: 'Problem with console log error')
question_5 = Question.create!(title: 'Ruby Test Page help needed', description: 'Problem with conditional error')
question_6 = Question.create!(title: 'Ajax Test Page help request', description: 'Problem with data error')
question_7 = Question.create!(title: 'SQL Test Page help with problem', description: 'Problem with database error')

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 1)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 1)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 1)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 2)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 3)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 3)
Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 4)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 5)

Answer.create!(body: Faker::Hipster.paragraph(7), question_id: 7)
