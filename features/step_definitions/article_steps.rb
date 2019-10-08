Given("I am at new articles page") do
  visit 'articles/new'
  expect(page).to have_content('New article')
end

When("I fill title {string} and text {string}") do |title, body|
  fill_in 'article[title]', :with => title
  fill_in 'article[text]', :with => body
end

When("I click on create article") do
  click_button 'submit'
end

Then("I see that the article entitled {string} is correctly created") do |title|
  expect(page).to have_content(title)
end