N,M=gets.split.map(&:to_i)
E=M.times.map{gets.split.map(&:to_i)}
d=0
l=r=nil
E.sort{|l,r|r[0]<=>l[0]}.each do |(a,b)|
  d=1 unless l
  l=r=a unless l
  next if a==l
  next if l<b
  d += 1
  l = a
end
p d
