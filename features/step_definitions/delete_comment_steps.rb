Given('there is a comment in this post') do
    @post.comments.create!({ :name => "Wayne", :email => "admin@wayneye.com", :content => "Test deleting comment" })
end

When('I click {string}') do |link|
    click_on link
end
  
Then('the comment should be deleted') do
    comments_list = find("#comments")
    expect(comments_list).not_to have_content("Wayne")
end