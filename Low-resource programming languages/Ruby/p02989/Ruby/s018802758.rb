n=gets.chop.to_i
d=gets.chomp.split(" ").map(&:to_i)
d=d.sort
count=0
index1=n/2-1
index2=n/2
count=d[index1]-d[index2]
puts count