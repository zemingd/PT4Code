s = gets.chomp.reverse
a = s.count('0')
b = s.count('1')
puts [a, b].min * 2