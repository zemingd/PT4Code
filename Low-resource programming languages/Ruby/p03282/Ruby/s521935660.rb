s = gets.chop
k = gets.chop.to_i
 
selected = k <= s.index(/[^1]/) ? "1" : s[s.index(/[^1]/)]

puts selected