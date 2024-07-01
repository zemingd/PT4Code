s = gets.chomp.split('')

puts s.uniq.count < 3 ? 'Bad' : 'Good'
