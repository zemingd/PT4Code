n,m=gets.split.map &:to_i
h=gets.split.map(&:to_i)
ab=m.times.map { gets.split.map &:to_i }
res=Hash.new{|h,k| h[k] = [] }
ab.each do |i|
  res[i[0]]<<i[1]
  res[i[1]]<<i[0]
end
ans=Hash.new{|h,k| h[k] = [] }
res.each do |k,v|
  v.each do |i|
    ans[k] = h[k-1] > h[i-1] ? true : false
    break if ans[k] == false
  end
end
puts n - ans.values.select{ |i| i==false }.size
