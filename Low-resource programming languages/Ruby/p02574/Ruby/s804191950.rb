eval'A=#'+`tr ' ' ,`
t=10**6
c=A.tally
print A.reduce(:gcd)>1?:not:(2..t).any?{|i|(1..t/i).sum{c[_1*i]||0}>1}?:setwise: :pairwise," coprime"