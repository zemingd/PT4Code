a,b=gets.split.map &:to_i
M=1250
i=0
ar=[]
br=[]
while i<M
  as=(i*0.08).floor
  bs=(i*0.1).floor
  ar << i if (as == a)
  br << i if (bs == b)
  i+=1
end
rs = ar & br
puts rs.empty? ? '-1' : rs.min