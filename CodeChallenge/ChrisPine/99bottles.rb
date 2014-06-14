number = 99

while number > 0
  if number > 1
    puts number.to_s + ' bottles of beer on the wall,'
    puts number.to_s + ' bottles of beer...'
  else
    puts number.to_s + ' bottle of beer on the wall,'
    puts number.to_s + ' bottle of beer...'
  end

  puts 'Take one down, pass it around; '

  number = number - 1

  puts number.to_s + ' bottles of beer on the wall.'  
  puts ''
end

