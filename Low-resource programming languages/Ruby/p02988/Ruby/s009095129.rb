n=gets.chop.to_i
p=gets.chomp.split.map(&:to_i)
min=[]
count=0
for i in 0...n-2 do
 for j in 0...3 do
  min.push(p[i+j])
 end
 min2=min
 min=min.sort
 if min2[1]==min[1]
  count=count+1
 end
 min=[]
end
puts count