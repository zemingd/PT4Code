w,h,x,y,r = gets.split.map(&:to_i)

if w -r >= x>=r && h -r >= y>=r
    puts "yes"
    else
    puts "No"
end