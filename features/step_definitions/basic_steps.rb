Then("I fill in {string} with {string}") do |input, content|  
  fill_in input, with: content 
end

Then("I click {string}") do |element|
 click_on element
end
