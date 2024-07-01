n = STDIN.gets.strip.to_i
puts 5 + n/5.times.map{ STDIN.gets.strip.to_i }.min
