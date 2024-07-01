list = gets.chomp.split(' ').map(&:to_i)

min_v = list.min
max_v = list.max
puts max_v - min_v
