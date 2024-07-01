n = gets.to_i
a = []
ans = 0
n.times do
  a << gets.to_i
end
b = a.uniq
b.each do |i|
  ans += a.count(i) % 2
end
puts ans
