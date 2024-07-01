#!ruby -narprime
A=$F.map &:to_i
d=A.tally
print Prime.each(1e6).all?{|b|a=((b..10**6)%b).sum{d[_1]||0}<2}?:pairwise:A.reduce(:gcd)<2?:setwise: :not,' coprime'if/ /