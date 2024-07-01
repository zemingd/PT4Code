X,K,D = gets.split.map &:to_i
x = X.abs
k = x / D
x -= D * [k,K].min
p [K-k,0].max.odd? ? D-x : x