S,T=*$<
a=0
T.chop.chars{|c|b=a%N=S.size-1
a<0||a+=(x=S.index c)?1+(S[b..N].index(c)||x+N-b):~a}
p a