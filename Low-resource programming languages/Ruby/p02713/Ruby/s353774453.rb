K=gets.to_i
s=0
1.upto(K){|i|1.upto(K){|j|x=i.gcd j;1.upto(K){|k|s+=x.gcd k}}}
p s