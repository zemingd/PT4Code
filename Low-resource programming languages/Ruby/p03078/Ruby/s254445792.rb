(x,y,z,k),a,b,c=$<.map{|s|s.split.map &:to_i}
ab=a.product(b).map{|x,y|x+y}.sort.reverse[0,k]
abc=ab.product(c).map{|x,y|x+y}.sort.reverse[0,k]
p *abc