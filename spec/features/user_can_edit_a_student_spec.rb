require 'rails_helper'

describe 'a user' do
  context 'visting /students/:id/edit' do  ##########replace with route once in config
  it 'can fill out an edit form, save, and be redirected to students/:id' do
    student = Student.create!(name: 'Emmie Hayes')
    new_name = 'Michelle Obama'

    visit ############ROUTE NAME HERE
    fill_in :student_name, with: new_name
    click_button 'Submit'

    expect(current_path).to eq(###########ROUTE GOES HERE)
    expect(page).to have_content(new_name)
    expect(page).to_not have_content('Emmie Hayes')
    end
  end
end
