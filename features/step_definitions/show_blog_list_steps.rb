Given('there are already {int} posts') do |count|
    # Given('there are already {float} posts') do |float|
    count.to_i.times do |n|
        Post.create!({ :title => "Title #{n}", :content =>
        "Content #{n}", :post_time => Time.now })
    end
end

Then('I can see list of {int} posted blogs') do |count|
    # Then('I can see list of {float} posted blogs') do |float|
    expect(page).to have_selector("table#posts-list>tr", count: count + 1) # +1 incluye la fila de encabezados
end