N = gets.to_i
s = N.times.map{ gets.to_i }
a = []
[3,N].min.times{|i| s.combination(N-i).map{|t| a<<t.inject(:+)} }
p a
puts a.select{ |tn| tn%10!=0 }.max.to_i