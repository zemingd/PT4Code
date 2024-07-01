a = gets.chomp.split.map(&:to_i).sort.reverse
puts ((a[0]*10) + a[1] + a[2]) 