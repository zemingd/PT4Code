w,h,x,y,r = gets.split.map(&:to_i)
if x <= 0 || y <= 0
  puts "No"
elsif x+r<=w && y+r<=h
  puts "Yes"
else
  puts "No"
end
