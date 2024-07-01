w, h, x, y, r = gets.split.map(&:to_i)
if r < x ||  x + r < w && r < y ||  y + r < h
    puts "Yes"
else
    puts "No"
end