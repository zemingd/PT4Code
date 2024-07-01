a = gets.split(" ").map(&:to_i)
line = readlines.map(&:chomp).sort.join
puts line