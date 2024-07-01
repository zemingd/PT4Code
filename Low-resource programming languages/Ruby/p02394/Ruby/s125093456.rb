w, h, x, y, r = gets.split.map(&:to_i)
if x > w - r || y > h - r || r > x || r > y
    puts "No"
else
    puts "Yes"
end
