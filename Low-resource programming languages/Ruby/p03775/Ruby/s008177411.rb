N = gets.to_i
puts (N / Math.sqrt(N).floor.downto(1).find{|a| N % a == 0 }).to_s.size