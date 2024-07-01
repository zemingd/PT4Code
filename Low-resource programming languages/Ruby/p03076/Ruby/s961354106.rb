X = 5.times.map{gets.to_i}
M = X.map{|v|v%10}.map{|v|v.zero? ? 10 : v}
T = X.map{|v|if v%10==0 then v else (v/10+1)*10 end}

a = M.min
i = M.index{|v|v == a}

T[i] = X[i]

p T.inject(:+)
