w,h,x,y,r=gets.split.map(&:to_i)
if x-r>=0 and x+r<=w and y-r>=0 and y+r<=h then
  puts "Yes"
else
  puts "No"
end

