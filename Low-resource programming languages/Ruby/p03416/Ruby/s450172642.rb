n=0
a,b=gets.split.map(&:to_i)
(a..b).map{|x|n+=1 if x.to_s==x.to_s.reverse}
p n