n=gets.to_i
a=gets.split.map(&:to_i)
p a.map{|i|
  c=0
  c+=1 while i[c]==0
  c
}.inject(:+)