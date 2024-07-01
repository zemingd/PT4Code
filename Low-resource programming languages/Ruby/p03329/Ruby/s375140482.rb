n = gets.to_i
p=(Math.log10(n)/Math.log10(9)).floor
ps=[]
p.times{|item| ps.push(9**(item+1))}
qs=[]
q=(Math.log10(n)/Math.log10(6)).floor
q.times{|item| qs.push(6**(item+1))}
as=(ps+qs).sort.reverse
as.push(1)
count=0
as.each do |item| 
   count+=n/item
 n=n%item
end
puts count