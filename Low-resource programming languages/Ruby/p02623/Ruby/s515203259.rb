F =-> {gets.split.map &:to_i}
*,k = F[]
a,B = F[]<<k,F[]
m=i = a.index {0 > k-=_1}
A = a[0..i]
while a=A.pop
  k += a
  (k-=B.shift; i+=1) until B[0]>k rescue A.clear
  m = [m,1+i-=1].max
end
p m