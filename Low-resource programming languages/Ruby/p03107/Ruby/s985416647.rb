s = gets.chomp
ans = 0
while s.sub!(/(?:01|10)+/, '')
  ans += 2
end
puts ans
