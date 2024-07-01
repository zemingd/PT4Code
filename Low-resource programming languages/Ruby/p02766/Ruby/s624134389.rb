N, K = gets.chomp.split(" ").map(&:to_i)

puts (Math.log(N) / Math.log(K)).ceil
