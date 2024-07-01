S = gets
K = gets.to_i

m = S.match(/^(1*[^1])/)
ss = m[1]
puts ss[[K, ss.size].min-1]