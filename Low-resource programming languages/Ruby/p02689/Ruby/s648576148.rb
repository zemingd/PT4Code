n,m=gets.split.map &:to_i
h=gets.split.map(&:to_i)
ab=m.times.map { gets.split.map &:to_i }
#puts ab.inspect
res=Hash.new{|h,k| h[k] = [] }
ab.each do |i|
  res[i[0]]<<i[1]
  res[i[1]]<<i[0]
end
ans=Hash.new{|h,k| h[k] = [] }
#puts res
#puts ans
res.each do |k,v|
  v.each do |i|
    #puts "k: #{k}, i: #{i} h[k-1]: #{h[k-1]}, h[i-1]: #{h[i-1]}"
    ans[k] = h[k-1] > h[i-1] ? true : false
    #ans[i] = h[k-1] < h[i-1] ? true : false
  end
  #puts ans
  #puts "######"
end
puts n - ans.values.select{ |i| i==false }.size