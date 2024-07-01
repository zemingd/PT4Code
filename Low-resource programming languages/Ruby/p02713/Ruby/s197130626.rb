a=(1..100).to_a.repeated_permutation(3).to_a
a.map{|n| n[0].gcd(n[1]).gcd(n[2])}
puts a.sum
