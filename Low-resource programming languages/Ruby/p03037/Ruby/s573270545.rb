n,m = gets.split.map(&:to_i)

l = []
r = []
m.times do |i|
  a,b = gets.split.map(&:to_i)
  l << a
  r << b
end

ans = r.min - l.max

puts ans > 0 ? ans - 1 : 0
