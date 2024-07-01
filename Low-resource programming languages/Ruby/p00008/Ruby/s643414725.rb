while n = gets.chomp
  puts (0..9).to_a.repeated_permutation(4).to_a.map{|a| a.inject(:+)}.select{|b| b == n.to_i}.size
end