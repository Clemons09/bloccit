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

Post.find_or_create_by!(
         title: "the week rushed by",
         body: "it's weird how I lose track of time sometimes"
)

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

 Comment.find_or_create_by!(
       post: Post.find(101),
       body: "music makes the world go round"
)

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
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} advertisements created"
 puts "#{Question.count} questions created"