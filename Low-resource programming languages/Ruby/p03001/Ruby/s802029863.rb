w,h,x,y = gets.split.map(&:to_f)

if (x == w/2) && (y == h/2)
  count = 1
else
  count = 0
end
 
size = w*h/2

print size
puts " " + count.to_s