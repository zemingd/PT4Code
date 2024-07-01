w,h,x,y,r = gets.split.map(&:to_i)

if w >= x+r && x-r>=0 && h >= y+r && y-r >= 0 
    puts "yes"
    else
    puts"No"
end