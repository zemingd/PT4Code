x, k, d = gets.split.map(&:to_i)
n = [x / d, k].min
x -= n * d
k -= n
if k.even?
  puts x
else
  puts [(x - d).abs, (x + d).abs].min
end
