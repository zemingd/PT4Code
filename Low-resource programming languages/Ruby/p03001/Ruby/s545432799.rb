w,h,x,y = gets.strip.split.map(&:to_i)
s = (w*h).to_f/2
t = 0
if w.to_f/2 == x && h.to_f/2 == y
  t = 1
end
puts [s,t].join(" ")