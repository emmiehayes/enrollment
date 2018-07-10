require 'rails_helper'

describe 'a user' do
  context 'visting new_student_path' do
  it 'can fill out a form to create a new student' do
    student_name = "Emmie Hayes"

    visit new_student_path
    fill_in :student_name, with: student_name
    click_button 'Create'

    expect(page).to have_content('Emmie Hayes')
    end
  end
end
