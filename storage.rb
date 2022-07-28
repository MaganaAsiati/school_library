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

  