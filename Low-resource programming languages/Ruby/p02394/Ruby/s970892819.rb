w,h,x,y,r = gets.chomp.split.map(&:to_i)
if (x >= r && x <= w-r ) && (y >= r && y <= h-r) then
  puts "Yes"
else
  puts "No"
end