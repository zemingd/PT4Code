a = gets.split(" ").map(&:to_i)
line = readlines.map(&:chomp).sort
line.each {|l| print l}