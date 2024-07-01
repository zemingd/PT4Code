n,m=gets.chomp.split(" ").map(&:to_i);
ary =[]
hs = {}
m.times do |i|
  p,y=gets.chomp.split(" ").map(&:to_i);
  if hs[p].nil?
    hs[p] = [{year: y, idx: i}]
  else
    hs[p].push({year: y, idx: i})
  end
end
hs.each do |k, v|
  v.sort_by!{|x| x[:year]}
  v.each_with_index{|x,i| x[:id] = i+1; x[:ken] = k}
end
hs.values.flatten.sort_by{|x| x[:idx]}.each do |y|
  print("#{format("%06d%06d",y[:ken],y[:id])}\n")
end