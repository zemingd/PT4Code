gets
r = gets.split.map(&:to_i)
min = 0
pos = 0
r.each do |x|
  min += x**2
end

for i in (r.min..r.max)
  c = 0
  r.each do |x|
    c += (x-i) ** 2
  end
  if c < min
    min = c
    pos = i
  end
end
puts min
