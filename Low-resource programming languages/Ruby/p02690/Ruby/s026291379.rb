require 'matrix'

X = gets.to_i

m = Matrix.build(200, 100) {|b, a| a ** 5 - (b - 100) ** 5 }
bd, a = m.index(X)
puts "#{a} #{bd - 100}"