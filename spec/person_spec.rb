require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(age: 20, name: 'louis', parent_permission: true)
  end

  describe '#new' do
    it 'returns a new person object' do
      @person.should be_an_instance_of Person
    end
  end
  describe '#age' do
    it 'returns the age of the person' do
      @person.age.should eql 20
    end
  end

  describe '#name' do
    it 'returns the name of the person' do
      @person.name.should eql 'louis'
    end
  end

  describe '#parent_permission' do
    it 'returns the permission of the person' do
      @person.parent_permission.should eql true
    end
  end
end

describe 'Methode in person' do
  context 'Should test method inside Person class' do
    mary = Person.new(age: 15, name: 'mary', parent_permission: false)

    it "should return false because mary's age is less than 15 " do
      expect(mary.can_use_services?).to eq false
    end

    it "should return true because mary's age is set more than 18 " do
      mary.age = 18
      expect(mary.can_use_services?).to eq true
    end

    it 'should return name of object mary ' do
      expect(mary.correct_name).to eq 'mary'
    end
  end
end
