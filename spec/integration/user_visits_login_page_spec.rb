require 'rails_helper.rb'

feature "User visits login page" do
    scenario "Users accesses login page from home page" do
        visit root_path
        expect(page).to have_content("Homepage")
        click_link "Workout"
        expect(page).to have_content("Log in")
        expect(page).to have_field("Email")
        expect(page).to have_field("Password")
    end
end