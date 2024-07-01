n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
gcds = [a[0]]
t = a[0]
(n-1).times do |i|
  t = t.gcd(a[i+1])
  gcds << t
end
ans = []
t = a[-1]
(n-1).downto(2) do |i|
  ans << t.gcd(gcds[i-2])
  t = t.gcd(gcds[i-1])
end
ans << t
p ans.max
