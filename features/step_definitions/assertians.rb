Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_text content
end