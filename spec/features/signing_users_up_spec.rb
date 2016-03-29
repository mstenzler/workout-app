require "rails_helper"

RSpec.feature "Users Signup" do

  scenario "with valid creadentials" do
    visit "/"
    
    click_link "Sign up"

    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content('You have signup up successfully')
  end  
end