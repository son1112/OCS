speak = gets.chomp
year = 1+rand(1700..2013)

if speak == 'BYE'
  count = 1
else
  count = 0
end

while true
  if speak == speak.upcase
    puts 'NO, NOT SINCE ' + year.to_s + '!'
    speak = gets.chomp
    year = 1+rand(1700..2013)

    if speak == 'BYE'
      count = count + 1
      if count == 3
        break
      end
    else
      if count > 0
        count = 0
      end
    end

  else
    puts 'HUH?! SPEAK UP, SONNY!'
    speak = gets.chomp
  end
end






