def bigger?(s,t)
  return s>=t ? 1 : 0
end

w,h,n=gets.split.map &:to_i
pt=[nil,0,w,0,h]
n.times do
  a=gets.split.map &:to_i
  pt[a[2]]=a[a[2]/3]
end
puts (pt[2]-pt[1])*(pt[4]-pt[3])*bigger?(pt[2],pt[1])*bigger?(pt[4],pt[3])
