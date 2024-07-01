n = gets.to_i
as = gets.split.map(&:to_i)

l = Array.new(n+1)
r = Array.new(n+1)
l[0] = 0
r[n] = 0
(1..n).each do |i|
  l[i] = l[i-1].gcd(as[i-1])
  # r[i] = l[i-1].gcd(as[i-1])
end

(n-1).downto(0).each do |i|
  r[i] = r[i+1].gcd(as[i])
end

ms = Array.new(n)
ans = []
(0..n-1).each do |i|
  ans << l[i].gcd(r[i+1])
end

puts ans.max