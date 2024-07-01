a=(1..gets.to_i).to_a.repeated_permutation(3).to_a

puts a.map{|n| n[0].gcd(n[1]).gcd(n[2])}.inject(:+)
