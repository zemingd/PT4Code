k=gets.to_i

r = (1..k).to_a.repeated_permutation(3).map{|x| x.reduce(:gcd) }.sum

print r