n=gets.to_i
a=gets.split.map(&:to_i)
sum=0
n.times{|i|(i+1).upto(n-1){|j|sum+=a[i]*a[j]}}
p sum