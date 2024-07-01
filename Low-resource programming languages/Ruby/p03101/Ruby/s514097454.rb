h, w = gets.chomp.split(" ").map(&:to_i)
h_painted, w_painted = gets.chomp.split(" ").map(&:to_i)

painted = h_painted * w + w_painted * h
duplicated = h_painted * w_painted
actual_painted = painted - duplicated
white_remained = h * w - actual_painted

puts white_remained