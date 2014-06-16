# def roman_numeral number
#   roman = []

#   def placement number
#     length = number.to_s.length

#     if length == 4
#       ['1000','M'] 
#     elsif length == 3

#       if (900...1000).include?(number)
#         ['100','CM']
#       elsif (500...900).include?(number)
#         ['100','D']
#       elsif (400...500).include?(number)
#         ['100','CD']
#       else
#         ['100','C']      
#       end
#     elsif length == 2

#       if (50...100).include?(number)
#         ['10','L']
#       else
#         if number == 45
#           ['10', 'VL']
#         elsif number == 40
#           ['10', 'XL']
#         else
#           ['10','X']
#         end
#       end
#     else
#       if number == 5
#         ['1','V']
#       else
#         ['1','I']
#       end
#     end

#   end


#   def quantity number
#     length = ((placement number)[1]).length 

#     if length > 1 || number == 5
#       1
#     else
#       (number/((placement number)[0]).to_i) 
#     end
#   end


#   while number >= 1             

#     a = ((placement number)[0]) 
#     b = quantity number         
#     first_letter = ((placement number)[1])
#     length = ((placement number)[1]).length
    
#     roman.push first_letter
    
#       if (number % a.to_i) == 0 && length == 1
#         if number == 5
#           number = 0
#         else
#           number = number - a.to_i
#         end
#       elsif (500...900).include?(number)
#         number = number - 500
#       else
#         number = number % a.to_i 
#       end

#   end

#   puts roman.join

# end

# #OLD-school Roman Numerals
# def old_roman_numeral number

#   roman = []

#   def placement number
#     length = number.to_s.length

#     if length == 4
#       ['1000','M']
#     elsif length == 3
#       if number == 500
#         ['100','D']
#       else
#         ['100','C']      
#       end
#     elsif length == 2
#       if (50...100).include?(number)
#         ['10','L']
#       else
#         ['10','X']
#       end
#     else
#       if number == 5
#         ['1','V']
#       else
#         ['1','I']
#       end
#     end

#   end


#   def quantity number
#     (number/((placement number)[0]).to_i)
#   end


#   while number >= 1             

#     a = ((placement number)[0]) 
#     b = quantity number         
#     first_letter = ((placement number)[1])

#     if number == 5
#       roman.push first_letter
#     else
#       b.times { roman.push first_letter }
#     end
#     number = number % a.to_i

#   end

#   puts roman.join

# end

# number = gets.chomp.to_i

# old_roman_numeral number
# roman_numeral number
