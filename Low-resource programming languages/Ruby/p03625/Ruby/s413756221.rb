n,*a=`dd`.split.map &:to_i
h={}
a.each{|e|h[e]+=1}
p [(h.keys.select{|e|h[e]>=4}.max||0)**2,(h.keys.select{|e|h[e]>=2}.max(2).reduce(:*) rescue 0)].max