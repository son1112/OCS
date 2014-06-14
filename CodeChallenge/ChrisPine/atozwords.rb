puts 'Type a word and press ENTER. Contribute as many words as you like.'
puts 'When you are finished, press ENTER on an empty line.'
puts 

words = []
word = gets.chomp
words.push word

until word == ""
  word = gets.chomp
  words.push word

  puts 
  puts words.sort
  puts
end

