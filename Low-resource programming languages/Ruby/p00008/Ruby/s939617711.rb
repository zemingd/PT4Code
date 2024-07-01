#!ruby -n
p [*0..9].repeated_permutation(4).count{|a|$_.to_i.==a.reduce:+}