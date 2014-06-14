def ask question
  # try to clean up by removing the answer variable. you'll have to use 
  # return to exit from the loop
  while true
    puts question
    reply = gets.chomp.downcase

    case reply
    when 'yes'
      return true
    when 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

  puts 'Hello, and thank you for...'
  puts

  ask 'Do you like eating tacos?'
  ask 'Do you like eating burritos?'
  wets_bed = ask 'Do you wet the bed?'
  ask 'Do you like eating chimichangas?'
  ask 'Do you like eating sopapillas?'
  puts 'Just a few more questions...'
  ask 'Do you like drinking horchata?'
  ask 'Do you like eating flautas?'
  puts
  puts 'DEBRIEFING:'
  puts 'Thank you for...'
  puts
  puts wets_bed
  
