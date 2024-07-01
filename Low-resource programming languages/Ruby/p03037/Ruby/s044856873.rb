n, m = gets.split.map(&:to_i)

l = []
r = []
m.times do |i|
  tmp = gets.split.map(&:to_i)
  l << tmp[0]
  r << tmp[1]
end
ans = (l.max..r.min).size
puts ans