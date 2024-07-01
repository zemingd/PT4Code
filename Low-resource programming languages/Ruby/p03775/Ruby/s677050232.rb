n=gets.to_i
i=1
r=Math.sqrt(n).to_i.downto(1).find{|i|n%i==0}
p (n/r).to_s.size