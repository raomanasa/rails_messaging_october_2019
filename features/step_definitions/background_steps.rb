Given("I am on the Login page") do
  visit user_session_path
end

Given("I am on the landing page") do
  visit root_path
end

Given ("I go to the sent page") do
  visit mailbox_sent
end
  
Given("the following user exist:") do |table|
  table.hashes.each do |hash|
    create(:user, hash)
  end
end

Given("the inbox has content") do
    sender = User.find(1)
    receiver = User.find(2)
    sender.send_message(receiver, "For ever yours", "To dear dmypip")
end



