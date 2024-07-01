x, y = gets.chomp.split.map(&:to_i)

loop do
puts [x, y].sort.join(" ")

break if x == 0 && y == 0
end






