n = gets.to_i
d = gets.chomp.split(" ").map(&:to_i).sort

mid = [d[(n/2)-1], d[(n/2)]]

puts mid.max - mid.min