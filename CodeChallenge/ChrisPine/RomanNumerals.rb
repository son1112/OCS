number = gets.chomp.to_i
num = number.to_f
roman = []

def places number
  length = number.to_s.length
  
  case length
  when length == 4
    1000
  when length == 3
    100
  when length == 2
    10
  when length == 1
    1
  end
  
end

while num >= 1

  if number > (places number)

    (number/1000).times { roman.push 'M' }
    num = num - (1000*(number/1000))
    number = number - (1000*(number/1000))

  else
    break
  end

end
puts roman.join

# number = gets.chomp.to_i

# def place(num, character)
#   (number/num).times { roman.push character }
#   num = num - num.(number/num)
# end

# def old_roman_numeral number

#   thousands = number/1000
#   five_hundreds = number/500
#   hundreds = number/100
#   fifties = number/50
#   tens = number/10
#   fives = number/5
#   ones = number/1

  
#   num = number.to_f

#   while num >= 1
#     roman = [] 

#     case num
#     when num >= 1000.0
#       thousands.times { roman.push 'M' }
#       num = num - 1000*thousands
#     when num >= 500.0
#       five_hundreds.times { roman.push 'D' }
#       num = num - 500*five_hundreds
#     when num >= 100.0
#       hundreds.times { roman.push 'C' }
#       num = num - 100*hundreds
#     when num >= 50.0
#       fifties.times { roman.push 'L' }
#       num = num - 50*fifties
#     when num >= 10.0
#       tens.times { roman.push 'X' }
#       num = num - 10*tens
#     when num >= 5.0
#       fives.times { roman.push 'V' }
#       num = num - 5*fives
#     when num >= 1.0
#       ones.times { roman.push 'I' }
#       num = num - ones
#     else
#       break
#     end

#     roman.join
#   end
# end  

# old_roman_numeral number



