require 'rails_helper'
RSpec.feature "post management function", type: :feature do


    

scenario "Test post creation" do
   @user=User.create!(fullname: 'lala', email: 'lala@gmail.com', password: '123456', telephone:"0789898787")
  Post.create!(company_name: 'newpost', post: 'test post',ranking:'Fair',user_id:@user.id)
  post=Post.last
  expect(post.company_name).to match("newpost")
end
scenario "Test user list" do
    post=Post.all
    assert post
  end

end