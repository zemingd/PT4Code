n = gets.to_i
s = gets.split("").map(&:chomp)
ans = 1
0.upto(n-2){|i| ans += 1 if s[i] != s[i+1]}
puts ans