n, m = gets.chomp.split(" ")
n = n.to_i
m = m.to_i
l_max = 1
r_min = 100000
m.times do |i|
  l,r = gets.chomp.split(" ")
  if l.to_i > l_max
     l_max = l.to_i
  end
  if r.to_i < r_min
     r_min = r.to_i
  end
end

if r_min > l_max
  puts( r_min-l_max+1)
else
  puts(0)
end