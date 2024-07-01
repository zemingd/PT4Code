w,h,n=gets.split.map &:to_i
pt=[nil,0,w,0,h]
n.times do
  a=gets.split.map &:to_i
  pt[a[2]]=a[a[2]/3]
end
x=pt[1]<pt[2] ? pt[2]-pt[1] : 0
y=pt[3]<pt[4] ? pt[4]-pt[3] : 0
puts x*y
