x, k, d = gets.split.map(&:to_i)

result = if 0.between?(a = x - k * d, b = x + k * d)
  x = x.abs
  if k.even?
    n = x / (2 * d)
    a = x - n * 2 * d
    b = x - 2 * d
    [a.abs, b.abs].min
  else
    a0 = (x - d).abs
    if k == 1
      a0
    else
      x -= a0
      n = x / (2 * d)
      a = x - n * 2 * d
      b = x - 2 * d
      [a.abs, b.abs].min
    end
  end
else
  x > 0 ? a : b
end

puts result