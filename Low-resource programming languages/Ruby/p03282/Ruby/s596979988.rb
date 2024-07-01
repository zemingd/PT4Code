s = gets.chomp
k = gets.to_i

puts !(x = s.index(/[^1]/)) || x > k ? 1 : s[x]