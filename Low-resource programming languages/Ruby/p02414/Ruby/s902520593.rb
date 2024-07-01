require 'matrix'
a,b,c,d=gets.split(" ").map(&:to_i)
##X=[]
x = Matrix[[gets.to_i, gets.to_i], [gets.to_i, gets.to_i]]
y = Matrix[[gets.to_i, gets.to_i], [gets.to_i, gets.to_i]]
val=Matrix.combine(x, y) {|a, b| a - b} # => Matrix[[5, 4], [1, 0]]
puts val
