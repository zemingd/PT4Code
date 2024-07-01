y=1e5
S=1000
gets.to_i.times{y*=1.05;y=y%S==0?y.to_i: (y/S).to_i*S+S}
p y