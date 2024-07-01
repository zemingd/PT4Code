#!ruby -narprime
A=$F.map &:to_i
d=A.tally
A[1]&&print(Prime.each(1e6).all?{|r|a=(r..10**6).step(r).sum{d[_1]||0}<2}?:pairwise:A.reduce(:gcd)<2?:setwise: :not,' coprime')