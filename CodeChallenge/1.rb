#1
nums = [10,5,5,6,2]

puts nums.inject(:+).to_s


#2
def create_indices nums
  indices = nums.each_with_index.map {|n,i| n*i} 

  puts indices.inject(:+)
end

create_indices nums


#3

movies = {}

while movies.count <3

  puts
  puts 'What is your name?'
  puts

  name = gets.chomp

  puts 'What is your favorite movie?'
  puts

  movie = gets.chomp

  movies[name] = movie
  
end

puts
puts movies




