# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Test', surname: 'Testov', is_admin: false)
user2 = User.create(first_name: 'TestSecond', surname: 'TestovSecond', is_admin: false)

cat1 = Category.create(title: 'Backend')
cat2 = Category.create(title: 'Frontend')
cat3 = Category.create(title: 'WEB')

test1 = Test.create(category_id: cat1.id, title: 'Ruby', level: 1)
test2 = Test.create(category_id: cat1.id, title: 'Rails', level: 1)
test3 = Test.create(category_id: cat2.id, title: 'CSS', level: 1)
test4 = Test.create(category_id: cat2.id, title: 'JavaScript', level: 1)
test5 = Test.create(category_id: cat3.id, title: 'HTML', level: 1)
test6 = Test.create(category_id: cat3.id, title: 'REST API', level: 1)

user3 = User.create(first_name: 'TestCreator', surname: 'CreatorTestov', is_admin: false, created_test_id: test1.id)

user_test1 = UserTest.create(user_id: user1.id, test_id: test1.id)
user_test2 = UserTest.create(user_id: user1.id, test_id: test2.id)
user_test3 = UserTest.create(user_id: user1.id, test_id: test3.id)
user_test4 = UserTest.create(user_id: user1.id, test_id: test4.id)

user_test5 = UserTest.create(user_id: user2.id, test_id: test5.id)
user_test6 = UserTest.create(user_id: user2.id, test_id: test6.id)

question1 = Question.create(test_id: test1.id, body: 'Каким языком является Ruby?')
answ1 = Answer.create(question_id: question1.id, correct: true, answer: 'Динамический, Интерпретируемый, Рефлективный')
answ2 = Answer.create(question_id: question1.id, correct: false, answer: 'Статически типизированный')
answ3 = Answer.create(question_id: question1.id, correct: false, answer: 'Выдуманный')
answ4 = Answer.create(question_id: question1.id, correct: false, answer: 'Низкоуровневый')

question2 = Question.create(test_id: test2.id, body: 'Что такое Ruby on Rails?')
answ5 = Answer.create(question_id: question2.id, correct: true, answer: 'Фреймворк')
answ6 = Answer.create(question_id: question2.id, correct: false, answer: 'Язык программирования')
answ7 = Answer.create(question_id: question2.id, correct: false, answer: 'Программное обеспечение')
answ8 = Answer.create(question_id: question2.id, correct: false, answer: 'Система управления базами данных')

question3 = Question.create(test_id: test3.id, body: 'Что такое CSS?')
answ9 = Answer.create(question_id: question3.id, correct: true, answer: 'Формальный язык описания внешнего вида документа')
answ10 = Answer.create(question_id: question3.id, correct: false, answer: 'Полноценный язык программирования')
answ11 = Answer.create(question_id: question3.id, correct: false, answer: 'Выдуманная аббревиатура')
answ12 = Answer.create(question_id: question3.id, correct: false, answer: 'Counter Strike: Source?!')

question4 = Question.create(test_id: test4.id, body: 'Каким языком является JavaScript?')
answ13 = Answer.create(question_id: question4.id, correct: true, answer: 'Динамический, Скриптовый')
answ14 = Answer.create(question_id: question4.id, correct: false, answer: 'Формальный язык описания поведения веб страницы')
answ15 = Answer.create(question_id: question4.id, correct: false, answer: 'Выдуманный')
answ16 = Answer.create(question_id: question4.id, correct: false, answer: 'Низкоуровневый со строгой типизацией')

question5 = Question.create(test_id: test5.id, body: 'Что такое HTML?')
answ17 = Answer.create(question_id: question5.id, correct: false, answer: 'Выдуманная аббревиатура')
answ18 = Answer.create(question_id: question5.id, correct: true, answer: 'Стандартизированный язык гипертекстовой разметки')
answ19 = Answer.create(question_id: question5.id, correct: false, answer: 'Свободный язык гипертекстовой разметки')
answ20 = Answer.create(question_id: question5.id, correct: false, answer: 'Полноценный язык программирования')

question6 = Question.create(test_id: test6.id, body: 'Что такое REST API?')
answ21 = Answer.create(question_id: question6.id, correct: true, answer: 'Набор правил обмена данных')
answ22 = Answer.create(question_id: question6.id, correct: false, answer: 'Выдуманная аббревиатура')
answ23 = Answer.create(question_id: question6.id, correct: false, answer: 'Правила режима ожидания (отдыха, от слова rest) для сервера')
answ24 = Answer.create(question_id: question6.id, correct: false, answer: 'Низкоуровневый язык программирования со строгой типизацией')
