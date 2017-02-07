require 'random_data'

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 uniq_post = Post.find_or_create_by!(title: "Walters one of kind post",
                         body: "Walters one of kind body")

 Comment.find_or_create_by!(post: uniq_post,
                            body: "Walters one of kind comment body")


 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
