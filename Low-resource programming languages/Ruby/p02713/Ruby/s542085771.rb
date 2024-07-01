n=gets.to_i
s=0
1.upto(n){|x|1.upto(n){|y| a=y.gcd(x); 1.upto(n){|z| s+= z.gcd a}}}
p s
