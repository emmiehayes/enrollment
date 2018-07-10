require 'rails_helper'

describe 'a user' do
  context 'visting student_path' do
  it 'can see the name of a single student' do
    student = Student.create!(name: 'Emmie Hayes')

    visit student_path(student)

    expect(page).to have_content(student.name)
    end
  end
end
