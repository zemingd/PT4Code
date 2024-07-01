s=gets.chomp
k=gets.to_i
n=s.size
0.upto(n-2){|i|
  next if k<j=(97-s[i].ord)%26
  s[i]=?a
  break if 0==k-=j
}
s[-1]=((s[-1].ord-97+k)%26+97).chr
puts s