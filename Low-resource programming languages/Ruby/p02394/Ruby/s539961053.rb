w,h,x,y,r = readline.split.map(&:to_i)

if w > x && h > y && w <= x + r  && h <= y + r && (x - r) >= 0 && (y - r) >= 0
  puts "Yes"
else 
  puts "No"
end
