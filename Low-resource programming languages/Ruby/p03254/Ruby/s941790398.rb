n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
sum = 0
ans = 0
a.each do |v|
  sum += v
  ans += 1 if sum <= x
end
ans -= 1 if ans > 0 && sum != x
p ans
