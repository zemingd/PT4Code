#!ruby -n
p (0..9).to_a.repeated_permutation(4).count{|e| e.inject(:+)==$_.to_i}