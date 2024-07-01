n,k=gets.split.map &:to_f
a=0
(1..n).each{|x|a+=0.5**[Math.log2(k/x).ceil,0].max}
p a/n