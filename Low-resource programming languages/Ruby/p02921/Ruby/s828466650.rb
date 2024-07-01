s = readline
t = readline
ans = 0
3.times do |i|
  ans++ if s[i] == t[i]
end
puts ans