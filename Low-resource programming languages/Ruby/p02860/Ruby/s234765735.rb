n = gets.to_i
s = gets.to_s
 
puts n.match?(/#{n[0, s/2]}{2}/) ? "Yes" : "No"