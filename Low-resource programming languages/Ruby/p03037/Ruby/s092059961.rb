n, m = gets.split.map(&:to_i)

l = []
r = []
m.times do |i|
  tmp = gets.split.map(&:to_i)
  l << tmp[0]
  r << tmp[1]
end
ans = r.min - l.max + 1
if ans == -1
  puts 0
else
  puts ans
end