n = gets.to_i
s = gets.chomp
puts s.slice!(0,n/2) == s ? "Yes" : "No"