Given('I am on the blog homepage') do
    visit("/posts")
    # puts page.html
  end
  
When('I click {string} link') do |link|
  click_on link
end

When('I fill {string} as Title') do |title|
  @title = title
  fill_in "Title", :with => title
end

When(/^I fill "(.*?)" as content$/) do |content|
  fill_in "Content", :with => content
end

When('I click {string} button') do |btn|
  click_button btn
end

Then('I should see blog I just posted') do
  # page.should have_content(@title)
  expect(page).to have_content(@title)
end