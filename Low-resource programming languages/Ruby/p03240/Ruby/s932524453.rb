_,*A=$<.map{_1.split.map &:to_i}
101.times{|x|101.times{|y|a=A.map{[_3,(_1-x).abs+(_2-y).abs]}
K,D=a.max
a.all?{_1==[K+D-_2,0].max}&&p(x,y,K+D)}}