s=gets.chomp.bytes.map{|b|b-97}
n=gets.to_i
s.size.times{|i|n>=m=(26-s[i])%26&&n-=m-s[i]=0}
s[-1]=(s[-1]+n)%26
puts s.map{|e|(e+97).chr}*''