gets
s=(S=$<.map &:to_i).inject:+
p s%10>0?s:s-=S.sort.find{|v|v%10>0}||s