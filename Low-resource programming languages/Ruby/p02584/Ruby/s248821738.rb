x, k, d = gets.split.map(&:to_i)
x = x.abs
t, m = x.divmod(d)
if k <= t
  puts (x - k * d).abs
elsif (k - t).even?
  puts m
else
  puts (m - d).abs
end
