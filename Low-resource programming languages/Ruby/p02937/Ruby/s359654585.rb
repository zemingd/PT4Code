S,T=$<.map &:chop
a=0
T.chars{|c|b=a%N=S.size
a<0||a+=(x=S.index c)?(y=S[b..-1].index c)?y+1:x+N-b+1:~a}
p a