n = gets.to_i
s = gets.chomp
ans = 1
(n-1).times do |i|
  ans += 1 if s[i] != s[i+1]
end
p ans