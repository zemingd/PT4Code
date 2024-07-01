n = gets.chomp.to_i
s = gets.chomp

p s.slice(0..n/2-1)*2 == s ? "Yes" : "No"