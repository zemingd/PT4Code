n,k=gets.split.map &:to_f
p (1..n).inject(0){|a,x|a+=0.5**[Math.log2(k/x).ceil,0].max}/n