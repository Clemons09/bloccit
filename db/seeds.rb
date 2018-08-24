require 'random_data'

 # Create Posts
50.times do
    Post.create!(
         topic: topics.sample,
         title: RandomData.random_sentence,
         body:  RandomData.random_paragraph
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

 10.times do
 	Advertisement.create!(
 		title: RandomData.random_sentence,
 		copy: RandomData.random_paragraph
 		)
 end

 100.times do
    Question.create!(
        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph,
        resolved: false 
    )
end

115.times do
    Topic.create!(
        name:         RandomData.random_sentence,
        description:  RandomData.random_paragraph
    )
end
topics = Topic.all
 
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} advertisements created"
 puts "#{Question.count} questions created"