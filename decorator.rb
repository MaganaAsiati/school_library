require './nameable'

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end
  attr_accessor :nameable
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

