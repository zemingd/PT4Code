k = gets.to_i
puts (1..k).to_a.repeated_permutation(3).map{|a, b, c| a.gcd(b).gcd(c)}.sum