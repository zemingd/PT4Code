n=gets.to_i
a=gets.split.map.with_index{|num,i| num.to_i-(i+1)}.sort
b= n.odd? ? a[n/2]:(a[(n/2)-1]+a[(n/2)-1])/2
sum=0
a.each{|an| sum+=(an-b).abs}
puts sum
