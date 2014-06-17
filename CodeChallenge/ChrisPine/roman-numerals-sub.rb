range = (1..1000).to_a
divs = []

range.each do |num|
  div = num.to_f/5.0
  # 5
  # 5.0/5.0
  # 1.0
  below = '( ' + num.to_s + ' - 1 ) '
  # '( 5 - 1)'

  if div == num/5
    # 5/5
    # 1
    # 1.0 = 1
    # true
    divs.push '======================='
    divs.push (num-1).to_s + ': ' + below # + ': ' + (div-1).to_s
    # [ '( 5 - 1 )' + (5-1).to_s + ': ' + (1.0-1).to_s ]
    # [ '( 5 - 1 ) 4: 0.0' ]
    divs.push num.to_s + ': ' + div.to_s
    divs.push '======================='
  end
end

puts divs.join("\n")

  
