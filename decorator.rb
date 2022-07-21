require_relative './nameable'

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end
  attr_accessor :nameable
end

