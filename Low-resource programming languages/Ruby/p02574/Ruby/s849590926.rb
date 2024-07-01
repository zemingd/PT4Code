eval'A=#'+`tr ' ' ,`
h=A.tally
puts (2..1e6).any?{|i|i.step(1e6,i).sum{h[_1]||0}>1}?A.reduce(:gcd)>1?"setwise":"not":"pairwise","coprime"