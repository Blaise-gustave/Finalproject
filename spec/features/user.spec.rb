require 'rails_helper'
RSpec.feature "user management function", type: :feature do


    
scenario "Test user list" do
  user=User.all
  assert user
end
scenario "Test user creation" do
  User.create!(fullname: 'lala', email: 'lala@gmail.com', password: '123456', telephone:"0789898787")
  user=User.last
  expect(user.fullname).to match("lala")
end

end