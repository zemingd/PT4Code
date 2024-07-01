w,h,x,y,r = gets.split(" ").map(&:to_f)
if x.between?(r, w - r) and y.between?(r, h - r)
    puts "Yes"
else
    puts "No"
end

