(*,k),a,b,c=$<.map{|s|s.split.map &:to_i}
f=->a,b{a.product(b).map{|x,y|x+y}.max k}
p *f[f[a,b],c]