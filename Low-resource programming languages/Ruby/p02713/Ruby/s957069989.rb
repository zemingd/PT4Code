K=gets.to_i
a=[*1..K].repeated_permutation(3).to_a
res=a.map { |e| e.inject{|x,y| x.gcd(y)} }
puts res.inject(:+)
