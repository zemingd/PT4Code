h,w = gets.split.map(&:to_i)
sum = 0
if w.even?
  sum += w/2 * h
else
  if h.even?
  sum += (w/2 + 1)* (h/2)
  sum += (w/2) * h/2
  else
  sum += (w/2 + 1)* (h/2 + 1)
  sum += (w/2) * h/2
  end   
end

puts sum