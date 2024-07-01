n=gets.to_i
vs=gets.split.map(&:to_i)
v1=[]
v2=[]
0.step(n/2,2) do |i|
  v1 << vs[i]
  v2 << vs[i+1]
end
a=v1.count(v1.uniq.max_by{|val| v1.count(val)})
b=v2.count(v2.uniq.max_by{|val| v2.count(val)})
puts n-a-b
