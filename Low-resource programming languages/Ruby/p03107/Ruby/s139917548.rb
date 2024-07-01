S = gets.chomp
a = S.count('0')
b = S.size - a
puts [a,b].min * 2
