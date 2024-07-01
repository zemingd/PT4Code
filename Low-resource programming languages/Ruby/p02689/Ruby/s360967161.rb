n,m = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
a = m.times.map{gets.chomp.split.map(&:to_i)}

roads = a.flatten
d = []
a.each do |i,x|
  d.push(h[i-1])
  d.push(h[x-1])
end
d = d.each_slice(2).to_a

left = 0
right = 0

d.each do |i,x|
  if i > x
    left += 1
  end
end

d.each do |i,x|
  if x > i
    right += 1
  end
end

if left > 0
  left = left-(a[0].uniq.size)
else
  left = left
end
if right > 0
  right = right-(a[1].uniq.size)
else
  right = right
end

puts right + left