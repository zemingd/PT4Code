x, k, d = gets.split.map(&:to_i)
x = x.abs
t, m = x.divmod(d)
if t >= k
  puts x-k*d
elsif (k-t).even?
  puts m
else
  puts m-d
end