# encoding: utf-8
 
w,h,x,y,r = gets.chomp.split(' ').map(&:to_i)
#w,h,x,y,r = "5 4 2 2 1".chomp.split(' ').map(&:to_i)
if 0 <= x - r && x + r <= w &&
   0 <= y - r && y + r <= h
  puts "Yes"
else
  puts "No"
end