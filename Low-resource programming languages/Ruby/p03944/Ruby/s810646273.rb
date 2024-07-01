w, h, n = gets.chomp.split.map(&:to_i)
x, y, a = n.times.map{gets.split.map(&:to_i)}.transpose
x_min = y_min = 0
x_max = w
y_max = h

for i in 0..(n-1)
  if a[i] == 1
    x_min = x[i]
  elsif a[i] == 2
    x_max = x[i]
  elsif a[i] == 3
    y_min = y[i]
  else a[i] == 4
    y_max = y[i]
  end
end
if x_max - x_min <= 0 || y_max - y_min <= 0
  puts 0
else
  puts (x_max - x_min) * (y_max - y_min)
end