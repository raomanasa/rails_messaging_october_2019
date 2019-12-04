Given("the following user exist:") do |table|
  table.hashes.each do |hash|
    User.create!(hash)
  end
end
