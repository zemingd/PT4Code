n = gets.to_i
xs = gets.split.map(&:to_i)
for i in 0..(n - 1)
  ys = []
  for j in 0..(n - 1)
      ys << xs[j] if j != i
  end
  ys.sort!
  puts ys[n / 2 - 1]
end