n = gets.chomp.to_i
s = gets.chomp.split(//)

ans = 1
1.upto(n-1).each do |i|
  ans += 1 if s[i-1] != s[i]
end

puts ans