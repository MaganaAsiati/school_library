class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def   def initialize(title:, author:)
    @title = title
    @author = author
    @rentals = []
  end
end
