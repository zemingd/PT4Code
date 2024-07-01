k = gets.to_i
p [*1..k].repeated_permutation(3).to_a.map{|r| r.inject(:gcd) }.sum