N, K = gets.chomp.split(" ").map(&:to_i)
 
puts (Math.log10(N+1) / Math.log10(K)).ceil
