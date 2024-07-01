x, k, d = gets.chomp.split.map(&:to_i)

x = x.abs
t = x / d
a = x - t * d

res =
if t == k
  a
elsif t < k
  [a, d - a].min
else
  (k - t) * d + a
end

puts res.abs
