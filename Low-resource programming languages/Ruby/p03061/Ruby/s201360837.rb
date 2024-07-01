n = gets.to_i
a = gets.split.map(&:to_i)

x = Array.new n
y = Array.new n

x[0] = a[0]
y[-1] = a[-1]
(1..n-1).each{|i| x[i] = a[i].gcd x[i-1]}
(0..n-2).reverse_each{|i|y[i] = a[i].gcd y[i+1]}

ret = (1..n-2).map{|i|x[i-1].gcd y[i+1]}.max
p [ret,x[n-2],y[1]].compact.max