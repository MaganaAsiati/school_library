require './student'
require './teacher'
require './classroom'
require './rental'
require './book'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def all_book
    @books&.each do |book|
      puts "[#{book.class}] - Title: #{book.title}, Author: #{book.author}"
    end
  end

  def all_person
    @people&.each do |person|
      puts "[#{person.class}] - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  