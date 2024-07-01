n=gets.to_i
if (vs=gets.split.map(&:to_i)).uniq.size==1 then puts vs.size/2;exit end
v1=[]
v2=[]
vs.each_with_index do |v,i|
  if i%2==0
    v1 << v
  else
    v2 << v
  end
end
a=v1.count(v1.max_by{|val| v1.count(val)})
b=v2.count(v2.max_by{|val| v2.count(val)})
p vs.size-a-b
