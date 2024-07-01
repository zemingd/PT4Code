n = gets.to_i
d = gets.split.map(&:to_i).sort

half_num = n / 2
p d[half_num] - d[half_num - 1]
