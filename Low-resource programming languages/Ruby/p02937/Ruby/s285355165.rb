S,T=*$<
a=0
N=S=~/$/
T.chop.chars{|c|a<0||a+=(x=S.index c)?1+(S[a%N..N].index(c)||x+N-a%N):~a}
p a