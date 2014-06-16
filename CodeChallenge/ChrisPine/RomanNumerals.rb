  def includesfives number
    fives = [(500...1000),(50...100),(5...10)]
    
    fives.each do |range|
      range.include?(number)
    end
  end


  def placement number
    place = []
    length = number.to_s.length

    if includesfives number
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
    puts
    puts '#TESTS'
    puts number
    puts placement number
    puts '#TESTS'
    puts
      #TESTS


    while number >= 1
      places = [
                ["M", 1000], 
                ["D",  500], 
                ["C",  100], 
                ["L",   50], 
                ["X",   10], 
                ["V",    5], 
                ["I",    1]
               ]
      
      a = placement number
      b = places.rassoc(a).first.to_s
      c = number / a

      #TESTS
      puts
      puts '#TESTS'
      puts places.rassoc(placement number).first.to_s
      puts '#TESTS'
      puts
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


  puts
  puts 'Please enter a year...'
  puts
  number = gets.chomp.to_i
  puts

  roman_numeral number

  puts

  #NB:
  # number % 1000 500 100 50 10 5 1
