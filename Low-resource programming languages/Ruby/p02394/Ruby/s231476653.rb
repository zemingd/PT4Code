w,h,x,y,r = gets.split.map{|ngo| ngo.to_i}

if (0 <= x - r and x + r <= w) and (0 <= y - r and y + r <= h)
  puts "Yes"
else
  puts "No"
end
