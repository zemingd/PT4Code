n,m=gets.split.map(&:to_i)
ope=[]
gets.split.map(&:to_i).each{|a|
  ope << [1,a]
}
m.times{
  ope << gets.split.map(&:to_i)
}
ope.sort_by!(&:last)
ans=0
while n>0
  b,c=ope.pop
  min=[b,n].min
  ans+=min*c
  n-=min
end
puts ans