gets
s=$<.map &:to_i
t=s.sum
p t-(t%10>0 ? 0 : [*s.select{|a|a%10>0},t].min)