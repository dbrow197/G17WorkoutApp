Given("I am on the homepage two") do
  visit root_path
end

When("I will click on {string} link") do |page_name|
  click_link page_name
end

Then("I will now be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end