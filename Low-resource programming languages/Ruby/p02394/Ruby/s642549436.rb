w, h, x, y, r = gets.split.map(&:to_i)
if x < r ||  w < x + r || y < r ||  h < y + r
    puts "Yes"
else
    puts "No"
end