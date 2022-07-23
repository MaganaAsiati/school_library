#!/usr/bin/env ruby
require './app'
def create_student(app)
  puts 'Let\'s create a student!'
  puts 'What is your name?'
  name = gets.chomp
  puts 'What is your age?'
  age = gets.chomp.to_i
  puts 'Has parents permission? (y/n)'
  parent_permission = gets.chomp.downcase == 'y'
  app.create_student(age: age, name: name, parent_permission: parent_permission)
  puts 'Student created!'
end

def create_teacher(app)
  puts 'Let\'s create a teacher!'
  puts 'What is your name?'
  name = gets.chomp
  puts 'What is your age?'
  age = gets.chomp.to_i
  puts 'What is your specialization?'
  specialization = gets.chomp
  app.create_teacher(specialization: specialization, age: age, name: name, parent_permission: true)
  puts 'Teacher created!'
end

def create_book(app)
  puts 'What is the book\'s title?'
  title = gets.chomp
  puts 'What is the book\'s author?'
  author = gets.chomp
  app.create_book(title: title, author: author)
  puts 'Book created!'
end

def create_rental(app)
  puts 'Select a book from the following list by number : '
  app.books.each_with_index do |book, index|
    puts "#{index}. [#{book.class}] - Title: #{book.title}, Author: #{book.author}"
  end
  id_book = gets.chomp
  book = app.books[id_book.to_i]

  puts 'Select a person from the following list by number (not id) : '
  app.people.each_with_index do |person, index|
    puts "#{index}. [#{person.class}] - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  id_person = gets.chomp
  person = app.people[id_person.to_i]

  puts 'Date : '
  date = gets.chomp
  app.create_rental(book: book, person: person, date: date)
  puts 'Rental created!'
end

