n = gets.to_i
min_times = 5.times.map { gets.chomp.to_i }.min
ans = 4 + (n / min_times.to_f).ceil
puts ans