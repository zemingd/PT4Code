h,w = gets.split.map(&:to_i)
sum = 0
if w.even?
  sum = (w * h) / 2
else
  sum = ((w * h) / 2) + 1
end
puts sum