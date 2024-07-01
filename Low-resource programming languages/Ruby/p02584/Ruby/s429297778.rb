x, k, d = gets.split.map(&:to_i)
n = [x.abs / d, k].min
if x > 0
  x -= n * d
else
  x += n * d
end
k -= n
if k.even?
  puts x.abs
else
  puts [(x - d).abs, (x + d).abs].min
end
