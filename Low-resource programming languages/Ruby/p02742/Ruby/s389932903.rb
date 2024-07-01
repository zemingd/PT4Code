h,w = gets.split.map(&:to_i)
sum = 0
if h.even? && w.even?
  sum += w/2 * h
elsif h.even? && w.odd?
  sum += (w/2 + 1) * h/2
  sum += (w/2) * h/2
elsif h.odd? && w.even?
  sum += (w/2 + 1) * (h/2 + 1)
  sum += (w/2) * h/2
else
  sum += h*w/2+1
end

puts sum