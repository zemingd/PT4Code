x0, k, d = gets.split.map(&:to_i)

x = x0.abs

result = if x <= k * d
  if k.even?
    n = x / (2 * d)
    a = x - n * 2 * d
    b = x - 2 * d
    [a.abs, b.abs].min
  else
    if k == 1
      [(x0 - d).abs, (x0 + d).abs].min
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