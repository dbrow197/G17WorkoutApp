Given("I am on the homepage three") do
  visit root_path
end

When("I will now be clicking on {string} link") do |string|
  click_button "Subscribe"
end

Then("I will again now be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end