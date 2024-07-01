N, *D = $<.read.split.map(&:to_i)
sum = D.inject(:+)
p D.inject(0){|acc,d| acc + (sum-d)*d }/2
