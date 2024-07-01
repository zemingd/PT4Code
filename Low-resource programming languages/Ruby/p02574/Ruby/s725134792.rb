eval'A=#'+`tr ' ' ,`
c=A.tally
print A.reduce(:gcd)>1?:not:(2..t=8**7).any?{|i|(1..t/i).sum{c[_1*i]||0}>1}?:setwise: :pairwise," coprime"