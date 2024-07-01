n,m=gets.split.map &:to_i
h=Hash.new(0)
n.times do
  x,y=gets.split.map &:to_i
  h[x]+=y
end
a=h.to_a
a.sort!{|x,y|x[0]<=>y[0]}
c=0
a.each do |e|
  c+=e[1]
  if c>=m
    puts e[0]
    break
  end
end