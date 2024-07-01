n=gets.to_i
s=[]
a=[]
n.times do |i|
  s[i],a[i]=gets.split.map &:chomp
end
ans=a.zip(s,[*1..n]).sort_by!{|i|[i[1], -i[0].to_i]}
ans.each do |i|
  puts i[2]
end
