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
