x, k, d = gets.split.map(&:to_i)

x = x.abs

result = if x < k * d
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
      x -= d
      n = x / (2 * d)
      a = x - n * 2 * d
      b = x - 2 * d
      [a.abs, b.abs].min
    end
  end
else
  x - k * d
end

puts result