num = gets.chomp.split
a=Integer(num[0])
b=Integer(num[1])
puts sprintf("%d %d %.5f", a/b, a%b, Float(a)/b)