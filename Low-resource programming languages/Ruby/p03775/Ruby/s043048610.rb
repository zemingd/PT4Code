N = gets.to_i
puts (N / (1 .. Math.sqrt(N).floor).reverse_each.find{|a| N % a == 0 }).to_s.size