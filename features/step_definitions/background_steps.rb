Given("I am on the Login page") do
    visit user_session_path
  end
  
Given("the following user exists") do |table|
  table.hashes.each do |hash|
    create(:user, hash)
  end
end