
a=gets.chomp.to_i
ary=[]
a.times do 
  c=gets.chomp
  ary.push(c)
end

ary=ary.each_with_object(Hash.new(0)){|v,o| o[v]+=1}
u=ary.max{|x,y| x[1]<=>y[1]}
h=u[1]
k=[]
ary.each do |x,y|
  if y==h
    k.push(x)
  end
end
k=k.sort
puts k