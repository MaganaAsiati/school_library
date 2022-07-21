require_relative './person'

class Student < Person
  def initialize( age, parent_permission: true, name: 'Unknown')
    super(age, parent_permission, name)
    
  end

  
end
