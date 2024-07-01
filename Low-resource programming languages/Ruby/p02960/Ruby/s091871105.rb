d=1,*[k=0]*12
gets.bytes{|c|d=d.map{s=0
14.times{|i|c-i/2<59&&c%16%10!=i||s+=d[k%13];k+=4}
s.%10**9+7}}
p d[2]