s = gets.to_s.chomp
t = gets.to_s.chomp
 
puts s == t[0...-1] ? "Yes" : "No"
