require 'json'
class Rental
  attr_accessor :date, :person, :book

  def initialize(date:, person:, book:)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end

  def to_json(*_args)
    JSON.dump({
                date: @date,
                person: @person,
                book: @book
              })
  end
end
