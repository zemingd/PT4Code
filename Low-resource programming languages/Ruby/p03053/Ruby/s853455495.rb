W=gets.split[~c=0].to_i+1
s=$<.read.tr'#
','10'
b,w=[?0,?1].map{|t|s.tr(?.,t).to_i 2}
(b|=b*2|b/2|b>>W|b<<W
c+=1)while w>b&=w
p c