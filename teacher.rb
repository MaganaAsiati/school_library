require_relative './person'

class Teacher < Person
  def initialize(specialization, age, parent_permission: true, name: 'Unknown')
    super(age, parent_permission, name)
    @specialization = specialization
  end

end
