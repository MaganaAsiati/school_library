require 'spec_helper'
describe Teacher do
  context 'Test initialize' do
    it 'initialize with specialization, age, name, id and parent_permission' do
      specialization = 'Math'
      age = 36
      name = 'Life'
      teacher = Teacher.new(specialization: specialization, age: age, name: name)
      expect(teacher.age).to be age
      expect(teacher.name).to eq 'Life'
      expect(teacher.id).to be > 0
    end
    it 'can use service' do
      specialization = 'Math'
      age = 36
      name = 'Ali'
      teacher = Teacher.new(specialization: specialization, age: age, name: name)
      expect(teacher.parent_permission).to be true
    end
    it 'should return true' do
      specialization = 'Math'
      name = 'Ali'
      age = 36
      teacher = Teacher.new(specialization: specialization, age: age, name: name)
      expect(teacher.can_use_services?).to eq true
    end
  end
end
