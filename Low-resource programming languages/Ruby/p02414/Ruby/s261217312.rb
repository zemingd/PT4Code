require 'matrix'

n,m,l = gets.split.map{ |e| e.to_i}

a = Array.new(n)
b = Array.new(m)

n.times { |index|
  a[index] = gets.split.map{ |e| e.to_i}
}

m.times{ |index|
  b[index] = gets.split.map{ |e| e.to_i}
}

A = Matrix.rows(a)
B = Matrix.rows(b)

(A*B).to_a.each do |elem|
  puts elem.join(" ")
end