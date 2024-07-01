n = gets.to_i
xs = gets.split.map(&:to_i)
ys = xs.sort
l = ys[n / 2 - 1]
r = ys[n / 2]
for i in 0..(n - 1)
  if xs[i] <= l
    puts r
  else
    puts l
  end
end