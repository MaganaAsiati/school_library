require './nameable'
require_relative './decorator'

class Person < Nameable
  attr_reader :id, :rentals

  attr_accessor :name, :age

  # Jai mis name = '' au lieu de name: ''
  def initialize(age:,id: nil,  name: 'Unknown', parent_permission: true)
    super()
    @id = id.nil? ? Random.rand(1..1000) : id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end
  def to_json(_args)
    JSON.dump({
                id: @id,
                name: @name,
                age: @age,
                parent_permission: @parent_permission,
                rentals: @rentals
              })
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
