w,h,x,y = gets.split.map(&:to_i)
puts 1.0*w*h/2
if w*1.0/2==x && h*1.0/2 ==y
  puts 1
else
  puts 0
end