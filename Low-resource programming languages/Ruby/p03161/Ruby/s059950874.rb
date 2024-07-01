eval'N,K,*A='+`dd`.split*?,
*b=0
2.upto(N){|i|b<<(1..K).map{|j|j<i ?b[-j]+(A[i]-A[i-j]).abs: 9**9}.min}
p b[-1]