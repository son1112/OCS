puts 'Starting year?'
starting = gets.chomp.to_i
puts ''

puts 'Ending year?'
ending = gets.chomp.to_i
puts ''

def leap_year?(year)
  (
   (
    (
     (year.to_f) / 4.0) % (year / 4)
    )
   ) == 0 && 
    (
     (
      (year.to_f) % 100.0) != 0)
  #oh,parens,howihavemissedourlispydays...
  #I love that the above spacing still works... beautiful
end


for year in starting..ending
  if leap_year?(year)
    puts year
  end
end

