require './nameable'
require_relative './decorator'

class Person < Nameable
  attr_reader :id, :rentals

  attr_accessor :name, :age

  # Jai mis name = '' au lieu de name: ''
  def initialize(age:, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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
