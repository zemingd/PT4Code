x, k, d = gets.split.map(&:to_i)
if x.abs - k * d > 0
  puts x.abs - k * d
else
  a = x > 0 ? x.abs % d : -(x.abs % d)
  b = x > 0 ? a - d : a + d
  c = x.abs / d
  if (k - c).even?
    puts a.abs
  else
    puts b.abs
  end
end