n = gets.chomp.to_i
s = gets.chomp
s1 = s.slice!(0,s.length/2)
puts s1 == s ? "Yes" : "No"