N = gets.to_i

puts 1.step(N, 2).count{|n| (1 .. n).select{|m| n % m == 0}.size == 8}