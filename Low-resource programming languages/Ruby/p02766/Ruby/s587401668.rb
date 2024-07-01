n, k = gets.chomp.split(' ').map{|i| i.to_i }

puts Math.log(n, k).floor + 1
