n = gets.to_i
a = gets.split.map(&:to_i)

l = Array.new(n + 2)
r = Array.new(n + 2)

l[0] = 0
1.upto(n - 1) do |i|
  l[i] = l[i - 1].gcd(a[i - 1])
end

r[n + 1] = 0
n.downto(2) do |i|
  r[i] = r[i + 1].gcd(a[i - 1])
end

ans = 0
n.times do |i|
  gcd = l[i].gcd(r[i + 2])
  ans = gcd if ans < gcd
end
puts ans