eval'N,K,*A='+`dd`.split*?,
*b=0
1.upto(N-1){|i|b<<(1..[K,i].min).map{|j|b[-j]+(A[i]-A[i-j]).abs}.min}
p b[-1]