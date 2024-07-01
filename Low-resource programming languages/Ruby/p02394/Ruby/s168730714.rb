w, h, x, y, r = gets.split(" ").map(&:to_i)

if (0 <= x-r && x+r <= w) && (0 <= y-r && y+r <= h) then
    puts "Yes"
else
    puts "No"
end