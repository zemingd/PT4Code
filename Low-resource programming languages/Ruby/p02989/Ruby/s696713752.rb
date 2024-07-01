N = readline.strip.to_i
sorted_d = readline.strip.split().map(&:to_i).sort

half_index = N/2

puts sorted_d[half_index] - sorted_d[half_index-1]

