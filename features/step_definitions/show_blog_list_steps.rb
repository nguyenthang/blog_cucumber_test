And(/^there are already (\d+) posts$/) do |count|
  count.to_i.times do |n|
    Post.create!({:title => "Title #{n}", :content => "Content #{n}", :post_time => Time.now})
  end
end

Then(/^I can see list of (\d+) posted blogs$/) do |count|
  page.should have_selector("table#posts-list>tr:eq(#{count})")
end
