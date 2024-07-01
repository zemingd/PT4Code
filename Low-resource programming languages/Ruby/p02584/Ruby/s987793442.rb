x, k, d = gets.split.map &:to_i

if k*d <= x.abs
  p x.abs - k*d
else
  n = x / d
  if n < 0 and x != d
    n += 1
  end
  y = x - n * d
  if (k - n.abs).odd?
    if x >= 0
      y -= d
    else
      y += d
    end
  end
  p y.abs
end
