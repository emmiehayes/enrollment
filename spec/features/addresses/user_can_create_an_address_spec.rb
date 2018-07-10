# As a user

# And I fill in description with a description (e.g. "Summer Address")
# And I fill in street with a street address
# And I fill in city with a city
# And I fill in state with a state
# And I fill in zip code with a zip code
# And I click submit
# I am taken to that student's show page
# And I see the description, street, city, state, and zip on that page

require 'rails_helper'

describe 'a user' do
  context 'visting new_student_address_path' do
  it 'can create a new address' do
    student = Student.create!(name: 'Emmie Hayes')
    description = 'Main House'
    street = '123 Main Street'
    city = 'Denver'
    state = 'Colorado'
    zip_code = '80002'
    click_link 'Create'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(description)
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content(zip_code)
    end
  end
end
