x, n = gets.split.map(&:to_i)

p = gets.split.map(&:to_i)

b = []
c = []
e = []

(-1000..1000).each do |i|
  b << i
end

d = b - p

d.each do |j|
  c << (x-j).abs
  e << j
end

f = c.min
z = 0
w = e.sort
ss = []

w.each do |m|
  if m == x - f
    ss << m
  elsif  m == x + f
    ss << m
  end
end


puts ss.min

