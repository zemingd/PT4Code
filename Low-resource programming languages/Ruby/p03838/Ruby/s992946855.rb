x, y = gets.split().map(&:to_i)
sa = (x.abs-y.abs).abs

if -x == y || x == -y
  c = 1
elsif x < 0 && -x < y
  c = 1
  c = c + y + x
elsif x < 0 && x > y
  c = 2
  c = c + sa
elsif x >= 0 && x > y
  c = 1
  if y > 0
    c = 2
  end
  c = c + sa
else
  c = sa
end
puts c
