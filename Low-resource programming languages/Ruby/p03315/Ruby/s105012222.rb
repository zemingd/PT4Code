s = gets.chomp.split("")

plus = s.count{ |x| x == '+' }

puts -4 + plus * 2
