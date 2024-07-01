s = gets.chomp
rains = s.split("S").map(&:length)

puts rains.max