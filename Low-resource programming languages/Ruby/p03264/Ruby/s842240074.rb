n=gets.to_i
res=0
(1..n).map{|i| (i+1..n).map{|j| res+=1 if i.odd? && j.even? || i.even? && j.odd?}}
puts res
