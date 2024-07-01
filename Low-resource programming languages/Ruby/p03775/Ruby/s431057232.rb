N = gets.to_i

puts (N / Math.sqrt(N).floor.downto(1).find{|x| N % x == 0}).to_s.length