And("I click on {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end

And("I click on link {string}") do |element|
    click_link(element)
end
