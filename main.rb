#!/usr/bin/env ruby
require './app'
require './input'
class HandlePerson
  def self.create_student(app)
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

  def self.create_teacher(app)
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
end



class HandlePerson
  def self.create_student(app)
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

  def self.create_teacher(app)
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
end

def main
  app = App.new
  loop do
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    input = gets.chomp.to_i
    Input.check_input(app, input)
  end
end

main
