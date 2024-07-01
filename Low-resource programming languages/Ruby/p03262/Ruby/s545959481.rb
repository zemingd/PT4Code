n, x = gets.split(" ").map(&:to_i)
points = gets.split(" ").map(&:to_i)
d = []
for i in 0..n-1
  d << (x - points[i]).abs
end
# p d

ans = 0
for i in 0..d.length-2
  cd = d[0].gcd(d[1])
  d.delete_at(0)
  d.delete_at(0)
  d.unshift(cd)
  ans = cd
end

if n == 1
  puts (x - points[0]).abs
else
  puts ans
end