n,m=gets.split.map &:to_i
a=[0]*n
m.times do
  x,y=gets.split.map &:to_i
  a[x-1]+=1
  a[y-1]+=1
end
puts a.*("\n")