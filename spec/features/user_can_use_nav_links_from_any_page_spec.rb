require 'rails_helper'

describe 'a user' do
  context 'visting show page at student_path' do
  it 'has links for Create New Student and See All Students' do
    student_1 = Student.create!(name: 'Emmie Hayes')
    student_2 = Student.create!(name: 'Michelle Obama')

    visit student_path(student_1)
    click_link 'Create New Student'
    expect(current_path).to eq(new_student_path)

    click_link 'See All Students'
    expect(current_path).to eq(students_path)
    expect(page).to have_content('Emmie Hayes')
    expect(page).to have_content('Michelle Obama')
    end
  end
end

describe 'a user' do
  context 'visting index page at students_path' do
  it 'can see the name of a single student' do
    student_1 = Student.create!(name: 'Emmie Hayes')
    student_2 = Student.create!(name: 'Michelle Obama')

    visit students_path
    click_link 'Create New Student'
    expect(current_path).to eq(new_student_path)

    click_link 'See All Students'
    expect(current_path).to eq(students_path)
    expect(page).to have_content('Emmie Hayes')
    expect(page).to have_content('Michelle Obama')
    end
  end
end

describe 'a user' do
  context 'visting edit page at edit_student_path' do
    it 'can see the name of a single student' do
      student_1 = Student.create!(name: 'Emmie Hayes')
      student_2 = Student.create!(name: 'Michelle Obama')

      visit edit_student_path(student_1)

      click_link 'Create New Student'
      expect(current_path).to eq(new_student_path)

      click_link 'See All Students'
      expect(current_path).to eq(students_path)
      expect(page).to have_content('Emmie Hayes')
      expect(page).to have_content('Michelle Obama')
    end
  end
end

describe 'a user' do
  context 'visting new page at new_student_path' do
    it 'can see the name of a single student' do
      student_1 = Student.create!(name: 'Emmie Hayes')
      student_2 = Student.create!(name: 'Michelle Obama')

      visit new_student_path

      click_link 'Create New Student'
      expect(current_path).to eq(new_student_path)

      click_link 'See All Students'
      expect(current_path).to eq(students_path)
      expect(page).to have_content('Emmie Hayes')
      expect(page).to have_content('Michelle Obama')
    end
  end
end
