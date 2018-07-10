require 'rails_helper'

describe 'validations' do
  context 'valid entry' do
  it 'has required attributes' do
    student_1 = Student.create!(name: 'Emmie Hayes')
    address = Address.new(description: 'Main House', street: '123 Main Street', city: 'Denver', state: 'Colorado', zip_code: '83428', student_id: student_1.id)

    expect(address).to be_valid
    end
  end

  context 'invalid entry' do
  it 'has no attributes' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new()

    expect(address).to be_invalid
    end
  end

  context 'invalid entry' do
  it 'has no description' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new(street: '123 Main Street', city: 'Denver', state: 'Colorado', zip_code: '83428')

    expect(address).to be_invalid
    end
  end

  context 'invalid entry' do
  it 'has no street' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new(description: 'Main House', city: 'Denver', state: 'Colorado', zip_code: '83428')

    expect(address).to be_invalid
    end
  end

  context 'invalid entry' do
  it 'has no city' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new(description: 'Main House', street: '123 Main Street', state: 'Colorado', zip_code: '83428')

    expect(address).to be_invalid
    end
  end

  context 'invalid entry' do
  it 'has no state' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new(description: 'Main House', street: '123 Main Street', city: 'Denver', zip_code: '83428')

    expect(address).to be_invalid
    end
  end

  context 'invalid entry' do
  it 'has no zipcode' do
    student = Student.new(name: 'Emmie Hayes')
    address = Address.new(description: 'Main House', street: '123 Main Street', city: 'Denver', state: 'Colorado')

    expect(address).to be_invalid
    end
  end
end
