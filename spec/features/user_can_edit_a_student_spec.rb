require 'rails_helper'

describe 'a user' do
  context 'visting edit_student_path' do
  it 'can fill out an edit form, save, and be redirected to students/:id' do
    student = Student.create!(name: 'Emmie Hayes')
    new_name = 'Michelle Obama'

    visit edit_student_path(student)
    fill_in :student_name, with: new_name
    click_button 'Submit'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(new_name)
    expect(page).to_not have_content('Emmie Hayes')
    end
  end
end
