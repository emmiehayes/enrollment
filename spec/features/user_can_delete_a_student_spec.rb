require 'rails_helper'

describe 'a user' do
  context 'visting students_path' do
  it 'can delete a student by name' do
    student_1 = Student.create!(name: 'Emmie Hayes')

    visit students_path
    click_on 'Delete'

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content('Emmie Hayes')
    end
  end
end
