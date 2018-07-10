require 'rails_helper'

describe 'validations' do
  context 'valid entry' do
    it 'has a name' do
      student = Student.new(name: 'Emmie Hayes')

      expect(student).to be_valid
    end
  end

  context 'invalid entry' do
  it 'has a name' do
    student = Student.new()

    expect(student).to be_invalid
    end
  end
end

describe 'relationships' do
  it 'has many addresses' do
    student = Student.create!(name: 'Emmie Hayes')
    address = Address.create!(description: 'Main House', street: '123 Main Street', city: 'Denver', state: 'Colorado', zip_code: '83428', student_id: student.id)

    expect(addresses).to respond_to(:students)
  end
end
