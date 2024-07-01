x, n = gets.split.map(&:to_i)

p = gets.split.map(&:to_i)

b = []
c = []
e = []

(1..100).each do |i|
  b << i
end

d = b - p

d.each do |j|
  c << (x-j).abs
  e << j
end

f = c.min
z = 0

e.each do |m|
  if m == x + c.min
    z = m
    break
  elsif m == x - c.min
    z = m
    break
  end
end

puts z