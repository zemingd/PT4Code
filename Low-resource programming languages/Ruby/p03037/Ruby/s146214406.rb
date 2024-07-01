(n,m),*a=$<.map{|l|l.split.map &:to_i}
l,r=0,1e9
a.each{|x,y|l,r=[x,l].max,[y,r].min}
p r-l>=0?r-l+1:0