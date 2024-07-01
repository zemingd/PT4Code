n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
l = Array.new(n+2, 0)
r = Array.new(n+2, 0)
l[0] = 0
1.upto(n) do |i|
  l[i+1] = (l[i]).gcd(a[i-1])
end

r[n+1] = 0
(n).downto(0) do |i|
  r[i] = (r[i+1]).gcd(a[i-1])
end

ans = 0
1.upto(n) do |i|
  ans = [ans, (l[i]).gcd(r[i+1])].max
end
puts ans
