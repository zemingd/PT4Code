N = gets.to_i
s = N.times.map{ gets.to_i }
a = []
N.times{|i| s.combination(i+1).map{|t| a<<t.inject(:+)} }

puts a.select{ |tn| tn%10!=0 }.max.to_i