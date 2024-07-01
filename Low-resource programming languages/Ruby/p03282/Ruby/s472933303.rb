s = gets.chomp
k = gets.to_i
puts s.delete('1').length == 0 ? 1 : s.delete('1')[0]
