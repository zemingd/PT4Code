n,k = gets.split.map(&:to_i)
ans = 0
a = k
while n >= a do
  a = a * k
  ans += 1
end
p ans+1