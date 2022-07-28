require 'json'
require './person'
require './book'

class Storage
  attr_reader :filesname

  def initialize
    @filesname = %w[rentals.json people.json books.json]
  end

  def prepare_storage
    @filesname.each do |filename|
      File.new(filename, 'w+') unless File.file?(filename)
    end
  end

  def save_all_data(app)
    save_books(app)
    save_person(app)
    save_rental(app)
  end

  def save_books(app)
    return unless File.file?('books.json')

    book_file = File.open('books.json', 'w')
    book_file.write(JSON.generate(app.books))
    book_file.close
  end

  def save_person(app)
    return unless File.file?('people.json')

    people_file = File.open('people.json', 'w')
    people_file.write(JSON.generate(app.people))
    people_file.close
  end

  def save_rental(app)
    return unless File.file?('rentals.json')

    rental_file = File.open('rentals.json', 'w')
    rental_file.write(JSON.generate(app.rentals))
    rental_file.close
  end

  
