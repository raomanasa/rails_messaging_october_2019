Given("I am on the Login page") do
  visit user_session_path
end

Given("I am on the landing page") do
  visit root_path
end

Given ("I go to the sent page") do
  visit mailbox_sent_path
end
  
Given("the following user exist:") do |table|
  table.hashes.each do |hash|
    create(:user, hash)
  end
end

Given("the inbox has content") do
    user1 = User.find(1)
    user2 = User.find(2)
    user1.send_message(user2, "For ever yours", "To dear user2")
    user2.send_message(user1, "Til the end of time", "To dear user1")
end

Given("I am in the inbox") do
  visit mailbox_inbox_path
end

Given("I am logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end
