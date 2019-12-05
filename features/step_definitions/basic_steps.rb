And("I click on {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end

When("I Choose {string} with {string}") do |recipient, name|
  select name, :from => recipient
end
