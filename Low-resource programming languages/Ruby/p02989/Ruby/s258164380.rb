N = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i).sort
puts a[N/2] - a[N/2 - 1]
