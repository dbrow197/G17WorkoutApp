Given("I am on the homepage four") do
  visit root_path
end

When("I am now clicking on {string} link") do |page_name|
  click_link page_name
end

Then("I am currently on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end