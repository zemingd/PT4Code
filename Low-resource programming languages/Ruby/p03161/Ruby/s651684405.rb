eval'N,K,*A='+`dd`.split*?,
*b=0
1.upto(N-1){|i|b<<(1..K).map{|j|j<=i ?b[-j]+(A[i]-A[i-j]).abs: 9**9}.min}
p b[-1]