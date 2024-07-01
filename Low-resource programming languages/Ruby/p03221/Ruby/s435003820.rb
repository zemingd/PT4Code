(n,m)=gets.chomp.split(' ').map{|a|a.to_i}
py=[]
x=[]
m.times do
  (p,y)=gets.chomp.split(' ').map{|a|a.to_i}
  py.push [p,y]
  if (x[p].nil?) 
    x[p] = [y]
  else
    x[p].push y
  end
end
n.times do |i|
  x[i].sort! unless x[i].nil?
end
py.each do |p,y|
  puts "%06d%06d" % [p,x[p].index(y)+1]
end