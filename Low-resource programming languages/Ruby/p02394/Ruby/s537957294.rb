w,h,x,y,r = gets.chomp.split(" ").map(&:to_i)
if r <= x && x <= w - r && r <= y && y <= h - r
  puts "Yes"
else
  puts "No"
end