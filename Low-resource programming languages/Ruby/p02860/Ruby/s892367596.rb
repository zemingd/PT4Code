n = gets.to_i
s = gets.to_s
 
puts s.match?(/#{s[0, n/2]}{2}/) ? "Yes" : "No"