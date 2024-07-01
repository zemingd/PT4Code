ss = ["Sunny", "Cloudy", "Rainy"]
puts ss[(ss.index(STDIN.readlines.first.chomp) + 1)% 3]