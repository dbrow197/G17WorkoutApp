Given("I am on the homepage") do
  visit root_path
end

When("I click on {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |field_name|
  expect(page).to have_field(field_name)
end