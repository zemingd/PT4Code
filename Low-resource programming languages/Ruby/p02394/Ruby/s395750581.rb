W, H, x, y, r = gets.split.map(&:to_i)
if 0 <= x - r && x + r <= W && 0 <= y - r && y + r <= H
    puts "Yes"
else
    puts "No"
end