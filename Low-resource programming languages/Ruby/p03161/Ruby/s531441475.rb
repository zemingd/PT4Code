eval'N,K,*A='+`dd`.split*?,
N.times{|i|$*<<T=(1..[K,i].min).map{$*[-_1]+(A[i]-A[i-_1]).abs}.min||0}
p T