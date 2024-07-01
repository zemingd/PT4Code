d=1,*[0]*12
gets.bytes{|c|k=0
d=d.map{s=0
10.times{|i|c<60&&c%16%10!=i||s+=d[k%13]
k+=4}
k+=3
s.%10**9+7}}
p d[2]