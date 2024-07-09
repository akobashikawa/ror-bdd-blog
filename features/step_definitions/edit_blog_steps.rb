Given('there is a post with title {string} and content {string}') do |title, content|
    @post = Post.create!({ :title => title, :content => content, :post_time => Time.now })
end

When('I edit this post') do
    visit(edit_post_url @post)
end

When('I update title to {string} and content to {string}') do |title, content|
    @updated_title = title
    @updated_content = content
    @post.update!({ :title => @updated_title, :content => @updated_content })
end

Then('I can see it has been updated') do
    step %{I am on the blog homepage}
    expect(page).to have_selector("table#posts-list>tr:eq(2) >td:eq(1)", text: @updated_title)
    expect(page).to have_selector("table#posts-list>tr:eq(2) >td:eq(2)", text: @updated_content)
end