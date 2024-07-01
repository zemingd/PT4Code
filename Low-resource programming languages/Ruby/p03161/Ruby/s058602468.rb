eval"N,K,*H="+`dd`.split*?,;
*dp=i=0,*[2e9]*N*2;
H.map{|h|i+=1;(i...i+K).map{|j|dp[j]=[dp[j],dp[i-1]+((H[j]||h)-h).abs].min}}
p dp[N-1]