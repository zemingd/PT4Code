h,w = gets.split.map(&:to_i)
sum = 0
if w.even?
  sum += w/2 * h
else
  if h.even?
    sum += w * h/2
  else
    sum += w * (h / 2 + 1)
    sum -= (w / 2)
  end
end
if w == 1 || h == 1
  sum = 1
end

puts sum