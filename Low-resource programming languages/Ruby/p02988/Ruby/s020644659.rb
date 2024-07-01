n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
1.upto(n-2) do |i|
  t = a[i-1,3].sort
  ans += 1 if a[i] == t[1]
end
p ans
