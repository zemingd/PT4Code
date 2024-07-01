s = gets.to_s.chomp
t = gets.to_s.chomp
 
puts s == t[0, s.size] ? "Yes" : "No"