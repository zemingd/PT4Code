eval'A=#'+`tr ' ' ,`
c=[0]*-~t=10**6
A.map{c[_1]+=1}
print A.reduce(:gcd)>1?:not:(2..t).any?{|i|(1..t/i).sum{c[_1*i]}>1}?:setwise: :pairwise," coprime"