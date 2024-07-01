n = gets.to_i
sorted_ds = gets.chomp.split(/ /).map(&:to_i).sort
puts sorted_ds[n/2] - sorted_ds[n/2-1]
