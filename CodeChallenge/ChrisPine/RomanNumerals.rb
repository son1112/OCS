#number = 500
#number = gets.chomp.to_i

puts
puts 'M: 1000'
puts 'D: 500'
puts 'C: 100'
puts 'L: 50'
puts 'X: 10'
puts 'V: 5'
puts 'I: 1'
puts


def includesfives number

  fives = [(500...1000),(50...100),(5...10)]

  if fives[0].include?(number)
    true
  else
    if fives[1].include?(number)
      true
    else
      if fives[2].include?(number)
        true
      else
        false
      end
    end
  end
end

def subs number
  subs = [4,9,40,45,49,90,95,99]
  # 5 10 50 100

  if subs.count(number) == 1
    true
  end
end

def placement number

  place = []
  length = number.to_s.length

  if (includesfives number) == true
    place.push 5
  else
    place.push 1
  end

  (length - 1).times { place.push 0 }

  if place.join.to_i >1000
    1000
  else
    place.join.to_i
  end
end


def roman_numeral number

  roman = []

  #TESTS 
  # puts 'A:'
  # puts '---------------------------------------------'
  # puts 'number: ' + number.to_s
  # puts 'placement number: ' + (placement number).to_s
  # puts '---------------------------------------------'
  # puts
  #TESTS


  while number >= 1
    places = [
              ["M", 1000], 
              ["D",  500], 
              ["C",  100], 
              ["IC",  99],
              ["VC",  95],
              ["XC",  90],
              ["L",   50],
              ["IL",  49],
              ["VL",  45],
              ["XL",  40],
              ["X",   10],
              ["IX",   9],
              ["V",    5], 
              ["IV",   4],
              ["I",    1]
             ]

    if subs number
      a = number
    else
      a = placement number
    end
    
    b = places.rassoc(a).first
    c = number / a

    #TESTS
    # puts 'C:'
    # puts '---------------------------------------------'
    # puts 'a = placement number : ' + a.to_s 
    puts 'b = places.rassoc(a).first : ' + b.to_s
    # puts '---------------------------------------------'
    # puts
    #TESTS

    c.times { roman.push b }
    
    unless number == a
      number = number % a
    else
      number = number - a
    end
  end

  puts roman.join
end


# puts
# puts 'Please enter a year...'
# puts
# number = gets.chomp.to_i
# puts

#TESTS 
# puts 'B:'
# puts '---------------------------------------------'
# puts '(500...1000).include?(number) : ' + (500...1000).include?(number).to_s
# puts '(50...100).include?(5) : ' + (50...100).include?(number).to_s
# puts '(5...10).include?(5) : ' + (5...10).include?(number).to_s
# puts '---------------------------------------------'
# puts
#TESTS

puts
#puts 'Roman Numeral for ' + number.to_s + ': ' + (roman_numeral number).to_s
number_rangeA = (1..100)

number_rangeA.each do |digit|
  num = digit.to_i

  puts (roman_numeral num).to_s + num.to_s
  puts
end


#NB:
# number % 1000 500 100 50 10 5 1
