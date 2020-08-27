Given("I am at articles page") do
  visit 'articles'
  expect(page).to have_content('Listing articles')
end

When("I fill the search text field with title {string}") do |title|
  fill_in 'article[title]', :with => title
end

When("I click on search article") do
  click_button 'Search article'
end

Then("I see the article entitled {string} is listed") do |title|
  expect(page).to have_content(title)
end