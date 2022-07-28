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

  