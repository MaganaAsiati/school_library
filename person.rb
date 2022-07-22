require './nameable'
require_relative './decorator'

class Person < Nameable
  attr_reader :id

  attr_accessor :name, :age

  # Jai mis name = '' au lieu de name: ''
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
  private :of_age?
end

person = Person.new(22, 'max')
p person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
p capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedPerson)
p capitalizedtrimmedperson.correct_name

# or 
# class TrimmerDecorator < Decorator
#   def correct_name
#     @nameable.correct_name[0..10]
#   end
# end