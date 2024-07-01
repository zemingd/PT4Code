n = gets.to_i
puts (3..(n.to_s.size)).map{|l| [7,5,3].repeated_permutation(l).select{|arr| arr.uniq.size == 3}.map{|arr|arr.join.to_i}}.flatten.select{|x|x<=n}.size