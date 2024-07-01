a = gets.chomp.split(' ').map(&:to_i).sort.reverse.join
puts a[0,2].to_i + a[2].to_i