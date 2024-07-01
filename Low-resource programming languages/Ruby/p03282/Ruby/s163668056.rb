s = gets.chomp.split('')
K = gets.to_i
s.shift while s[0] == '1'
puts s.length == 0 ? '1' : s[0]