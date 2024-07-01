n = gets.to_i
s = gets.chomp
puts (n.even? && s[0..n/2] == s[n/2+1..n-1]) ? "Yes" : "No"
