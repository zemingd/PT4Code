n,m = gets.chomp.split(' ').map(&:to_i)
l_max = 0
r_min = n + 1
m.times do
  l,r = gets.chomp.split(' ').map(&:to_i)
  if l > l_max
    l_max = l
  end
  if r < r_min
    r_min = r
  end
end
if  l_max > r_min
  puts 0
else
  puts r_min - l_max + 1
end