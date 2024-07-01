n,m=gets.split.map &:to_i
h=gets.split.map &:to_i
ab=m.times.map { gets.split.map &:to_i }.sort.reverse
res=Hash.new(false)
ab.each do |i|
  h[i[0]-1] >= h[i[1]-1] ? res[i[0]]=true : res[i[0]]=false
  h[i[1]-1] >= h[i[0]-1] ? res[i[1]]=true : res[i[1]]=false
end
puts res.values.select{ |i| i==true }.size