w, h, x, y, r = gets.chomp.split.map(&:to_i)
if x > 0 && y > 0 && w >= x+r && h >= y+r
    puts "Yes"
else
    puts "No"
end