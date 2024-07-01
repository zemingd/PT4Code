n = gets.to_i
t = n.times.map{gets.to_i}
def lcm(a, b)
  a.lcm(b)
end

ans = t[0]
(1..(n-1)).each do |i|
  ans = lcm(ans, t[i])
end

puts ans