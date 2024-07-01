s = gets.chop
t = gets.chop

ans = 0

3.times do |i|
  ans +=1 if s[i] == t[i]
end

print ans
