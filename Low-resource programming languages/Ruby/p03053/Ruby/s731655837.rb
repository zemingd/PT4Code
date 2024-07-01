W=gets.split[1].to_i+1
s=$<.read
b=s.tr('#.
','10').to_i 2
w=s.tr('
#.','01').to_i 2
c=0
(b|=b*2|b/2|b>>W|b<<W
b&=w
c+=1)while b<w
p c