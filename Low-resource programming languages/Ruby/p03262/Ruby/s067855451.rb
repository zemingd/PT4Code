N,X = gets.split.map(&:to_i)
x = gets.split.map{|t|t.to_i-X}
p x.inject{|a,b| a.gcd(b)}.abs
