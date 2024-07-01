s=gets.chop.bytes.map{|e| e-97}
k=gets.to_i
s.size.times{|i|
    x=26-s[i]
    (s[i]=0; k-=x) if s[i]>0 and k>=x
}
s[-1]=(s[-1]+k%26)%26
puts s.map{|e| (e+97).chr}*''
