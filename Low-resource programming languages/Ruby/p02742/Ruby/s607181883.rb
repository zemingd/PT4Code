h, w = gets.chomp.split.map(&:to_i)
if h.even?
  p (h * w) / 2
else
  if w.even?
    p (h * w) / 2
  else
    p ((h * w) / 2.0).ceil
  end
end
