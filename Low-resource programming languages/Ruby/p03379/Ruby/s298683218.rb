n = gets.to_i
xs = gets.split.map(&:to_i)
for i in 0..(n - 1)
  lxs = xs.take(i)
  rxs = xs.drop(i + 1)
  ys = lxs + rxs
  ys.sort!
  puts ys[n / 2 - 1]
end