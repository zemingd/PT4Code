w,h,x,y = gets.split.map(&:to_i)

count = 1
if w != h
  count = 0
end

size = 0
if (w/2-x).abs <= (h/2-y).abs
  size = ((w-x).abs)*h.to_f
else
  size = ((h-y).abs)*w.to_f
end

print size
puts " " + count.to_s
