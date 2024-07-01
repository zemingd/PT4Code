n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
t = a[0]
(n-2).times do |i|
  t = t.gcd(a[i])
end
p [t.gcd(a[-1]),t.gcd(a[-2])].max
