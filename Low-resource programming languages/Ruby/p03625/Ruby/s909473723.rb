n,*a=`dd`.split.map &:to_i
a.each{|e|h[e]+=1}
p [h.keys.select{|e|h[e]>=4}.max**2,h.keys.select{|e|h[e]>=2}.max(2).reduce(:*)].max