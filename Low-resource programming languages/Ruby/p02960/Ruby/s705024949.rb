d=1,*[k=0]*12
gets.bytes{|c|d=d.map{s=0
10.times{|i|c<60&&c%40-8!=i||s+=d[k%13];k+=3}
s.%10**9+7}}
p *d