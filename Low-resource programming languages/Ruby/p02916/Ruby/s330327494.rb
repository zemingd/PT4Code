N = gets.to_i
As, Bs, Cs = readlines.map{|l| l.split.map(&:to_i)}

puts As.inject(0){|s, i| s + Bs[i - 1]} + As.each_cons(2).select{|i, j| j == i + 1}.inject(0){|s, (i, j)| s + Cs[i - 1]}