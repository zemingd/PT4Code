a,b,c = gets.split.map(&:to_i)
ans = 0
for num in a..b do
  ans += 1    if c % num == 0
end
p ans
