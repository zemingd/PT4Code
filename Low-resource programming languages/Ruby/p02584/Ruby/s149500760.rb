x, k, d = gets.split.map &:to_i

if k*d <= x.abs
  p x.abs - k*d
else
  n = x / d
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
