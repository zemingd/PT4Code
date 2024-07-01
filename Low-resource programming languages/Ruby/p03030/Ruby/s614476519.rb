n = gets.to_i
c, p = n.times.map{gets.chomp.split}.transpose
res = Array.new(n).map{Array.new(3)}
for i in 0..(n-1)
  res[i][0] = c[i]
  res[i][1] = p[i].to_i
  res[i][2] = i + 1
end
res.sort_by{|x| [x[0], -x[1]]}.each do |r| puts r[2] end