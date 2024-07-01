n,m=gets.split.map &:to_i
h=gets.split.map(&:to_i)
ab=m.times.map { gets.split.map &:to_i }
res=Hash.new{|h,k| h[k] = [] }
ab.each do |i|
  #puts h[i[0]-1]
  #puts h[i[1]-1]
  #puts "#######"
  if h[i[0]-1] > h[i[1]-1]
    #puts "==1=="
    res[i[0]]<<i[1]
    res[i[1]]<<i[0]
  elsif h[i[0]-1] < h[i[1]-1]
    #puts "==2=="
    res[i[0]]<<i[1]
    res[i[1]]<<i[0]
  end
end
ans=Hash.new{|h,k| h[k] = [] }
res.each do |k,v|
  v.each do |i|
    ans[k] = k > i ? true : false
  end
end
puts n - ans.values.select{ |i| i==false }.size