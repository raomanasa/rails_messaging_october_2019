Given("I am on the landing page") do
    visit root_path
  end
  
And("I click on {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end