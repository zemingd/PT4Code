X = 5.times.map{gets.to_i}
M = X.map{|v|v%10}.map{|v|v.zero? ? 10 : v}
T = X.map{|v|v.ceil(-1)}

a = M.min
i = M.index{|v|v == a}

T[i] = X[i]

p T.inject(:+)