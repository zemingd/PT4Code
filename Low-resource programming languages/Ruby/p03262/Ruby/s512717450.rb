n, x = gets.split.map(&:to_i)
tmp = gets.split.map(&:to_i)
tmp << x
tmp.sort!
hoge = []
(n-1).times do |i|
  hoge << tmp[i+1]-tmp[i]
end
ans = hoge[0]
(n-2).times do |i|
  ans = hoge[i+1].gcd(ans)
end
if n==1
  ans = (tmp[0]-tmp[1]).abs
end
puts ans
