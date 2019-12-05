Given("I am on the Login page") do
  visit user_session_path
end

Given("I am on the landing page") do
  visit root_path
end
  
Given("the following user exist:") do |table|
  table.hashes.each do |hash|
    create(:user, hash)
  end 
end

Given("I am on the inbox") do
visit mailbox_inbox_path
end