s = gets.chomp
puts s.split('').inject(0) { |acc, c| c == '+' ? acc+1 : acc-1 }
