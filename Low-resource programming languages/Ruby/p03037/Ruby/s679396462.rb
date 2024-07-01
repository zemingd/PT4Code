n, m = gets.split.map(&:to_i)
lrs = m.times.map{|_| gets.split.map(&:to_i)}

l_max = 0
r_min = n
lrs.each do |lr|
  l_max = [l_max, lr[0]].max
  r_min = [r_min, lr[1]].min
end
if r_min < l_max
  p 0
  exit
end
p r_min - l_max + 1