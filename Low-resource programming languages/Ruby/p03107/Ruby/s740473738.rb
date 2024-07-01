s = gets.chomp.split("").map(&:to_i)
puts [s.count(0),s.count(1)].min * 2