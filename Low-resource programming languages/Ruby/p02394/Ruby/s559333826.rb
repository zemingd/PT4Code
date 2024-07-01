w, h, x, y, r = gets.split.map(&:to_i)
if x < r || w < x + r || y < r || h < y + r
    puts "No"
else
    puts "Yes"
end