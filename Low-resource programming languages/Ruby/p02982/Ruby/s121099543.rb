n,d=gets.split.map(&:to_i)
p=[]
n.times(p<<gets.split.map(&:to_i))
c=0
p.combination(2){|a,b|sum=0;0.upto(d-1){|i| sum+=(a[i]-b[i]})*2};c+=1 if(Math.sqrt(sum).to_i)*2==sum}}
puts c