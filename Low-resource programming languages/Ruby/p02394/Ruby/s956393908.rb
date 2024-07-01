w,h,x,y,r = gets.chomp.split.map(&:to_i)
if (x-r >= 0) &&
   (x+r <= w) &&
   (y-r >= 0) &&
   (y+r <= h)
  puts "Yes"
else
  puts "No"
end
