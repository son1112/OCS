puts 'What is your favorite number?'
puts ''

fav_strng = gets.chomp

bigger_int = fav_strng.to_i + 1
bigger_strng = bigger_int.to_s

puts 'Well, ' + bigger_strng + ' is bigger and better.'


