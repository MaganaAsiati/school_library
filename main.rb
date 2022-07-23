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

