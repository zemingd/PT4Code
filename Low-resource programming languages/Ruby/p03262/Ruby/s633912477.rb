gcd=->x,y{x%y>0?gcd(y,x%y):y}
n,x=gets.split.map &:to_i
p gets.split.map{|a|(a.to_i-x).abs}.inject &gcd