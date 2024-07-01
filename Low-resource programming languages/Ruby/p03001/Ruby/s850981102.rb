w,h,x,y = gets.split.map(&:to_i)
w = w.to_f
h = h.to_f
ans = (w*h)/2
aha = 0
if x == (w/2) && y == (h/2)
  aha = 1
else
  aha = 0
end
puts "#{ans.to_f} #{aha}"