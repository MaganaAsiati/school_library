require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new(title: 'Love', author: 'Ced')
  end

  describe '#new' do
    it 'returns a new book object' do
      @book.should be_an_instance_of Book
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      @book.title.should == 'Love'
    end
  end

  describe '#author' do
    it 'returns the correct author' do
      @book.author.should == 'Ced'
    end
  end
  describe '#add_rental' do
    it 'should add a rental' do
      rental = Rental.new(date: '12/12/2002', person: Person.new(id: 1, age: 14, name: 'Ced', parent_permission: true),
                          book: Book.new(title: 'Love', author: 'Ced'))
      @book.add_rental(rental)
      @book.rentals.should == [rental]
    end
  end
end
