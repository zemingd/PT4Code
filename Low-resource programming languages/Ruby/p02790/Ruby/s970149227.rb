a,b = gets.split.map(&:to_i)
x = []
y = []
a.times do
  x << b
end

b.times do
  y << a
end

if x[0] <= y[0]
  puts x.join
else
  puts y.join
end