n,m=gets.split.map(&:to_i)
l=[]
n.times do
  l << []
end
m.times do |i|
  p,y=gets.split.map(&:to_i)
  l[p-1] << [y,i]
end
a=[]
n.times do |i|
  j=1
  l[i].sort.each do |y,k|
    a[k]=format("%06d%06d",i+1,j)
    j+=1
  end
end
puts a
