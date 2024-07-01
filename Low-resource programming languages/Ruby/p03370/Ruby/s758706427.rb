n,x=gets.split.map &:to_i
l=[]
n.times do
  l << gets.to_i
end
p (x-l.inject(+:))/l.min+n
