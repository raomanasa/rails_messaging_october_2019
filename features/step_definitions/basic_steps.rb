Given("I am on the landing page") do
    visit root_path
  end
  
And("I click on {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end

Then("I should be on the Sign up page") do
    expect(current_path).to eq ("/users/sign_up")
end

Then("I should be on the landing page") do
    expect(current_path).to eq root_path
end

Then("I should see {string}") do |string|
    expect(page).to have_text string
end