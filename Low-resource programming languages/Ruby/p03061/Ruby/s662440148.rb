n = gets.to_i
a = gets.split.map(&:to_i)
l = Array.new(n)
r = Array.new(n)
l[0] = a[0]
for i in 1..n-1
    l[i] = l[i-1].gcd(a[i])
end
r[-1] = a[-1]
(n-2).downto(0) do |i|
    r[i] = r[i+1].gcd(a[i])
end
ans = r[1]
for i in 1..n-2
    m = l[i-1].gcd(r[i+1])
    ans = m if m > ans
end
ans = l[-1] if ans < l[-2]
puts ans