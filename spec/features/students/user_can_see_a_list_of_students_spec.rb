require 'rails_helper'

describe 'a user' do
  context 'visting students_path' do
    it 'can see a list of all students' do
      student_1 = Student.create!(name: 'Emmie Hayes')
      student_2 = Student.create!(name: 'Michelle Obama')
      student_3 = Student.create!(name: 'Taylor Reese')

      visit students_path

      expect(page).to have_content('All Students')
      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to have_content(student_3.name)
    end

    it 'can click a students name and go to the student show page' do
      student = Student.create!(name: 'Emmie Hayes')

      visit students_path
      click_link 'Emmie Hayes'
      expect(current_path).to eq(student_path(student))
      expect(page).to have_content(student.name)
    end
  end
end
