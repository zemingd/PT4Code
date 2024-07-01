n,m=gets.split.map(&:to_i)
lmax,rmin=0,n
m.times do
  l,r=gets.split.map(&:to_i)
  lmax=l if l>lmax
  rmin=r if r<rmin
end

puts [0,rmin-lmax+1].max