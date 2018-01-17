 require 'random_data'


 50.times do

   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 Post.find_or_create_by(title: "I'm right", body: "I'm right and you're wrong I know it.")
 Comment.find_or_create_by(body: "Says who?")

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"