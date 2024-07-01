n = gets.chomp.to_i
v = gets.chomp.split.map(&:to_i)

v1 = []
v2 = []
n.times do |i|
  if i.even?
    v1.push(v[i])
  else
    v2.push(v[i])
  end
end

v11 = v1.group_by(&:to_i).sort_by{|_,v|-v.size}.map(&:first).first
v22 = v2.group_by(&:to_i).sort_by{|_,v|-v.size}.map(&:first).first

if v11 != v22
  p v1.count{|a| a != v11} + v2.count{|a| a != v22}
else
  v222 = v2.group_by(&:to_i).sort_by{|_,v|-v.size}.map(&:first)[1]
  tmp1 = v1.count{|a| a != v11} + v2.count{|a| a != v222}
  v111 = v1.group_by(&:to_i).sort_by{|_,v|-v.size}.map(&:first)[1]
  tmp2 = v1.count{|a| a != v111} + v2.count{|a| a != v22}
  p [tmp1, tmp2].min
end
