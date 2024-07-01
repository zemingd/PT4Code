a = gets.chomp.split(" ").map(&:to_i).sort
puts a[2] * 10 + a[0] + a[1]