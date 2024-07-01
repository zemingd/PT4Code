x, y = gets.split(" ").map(&:to_i)

while x != 0 && y != 0
    puts [x, y].sort_by(&:to_i).join(" ")
end