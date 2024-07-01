n=gets.to_i-1
a=gets.split.map &:to_i
c=0
(0..n).map{|i|n.downto(i+1){|j|a[k=j-1]>a[j]&&(a[k,2]=a[j],a[k])&&c+=1}}
puts a*" ",c