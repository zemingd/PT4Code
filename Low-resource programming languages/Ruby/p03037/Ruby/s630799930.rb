n,m = gets.strip.split.map(&:to_i)
left = []
right = []
m.times do
  l,r = gets.strip.split.map(&:to_i)
  left << l
  right << r
end
if l.max <= r.min
  puts r.min-l.max+1
else
  puts 0
end