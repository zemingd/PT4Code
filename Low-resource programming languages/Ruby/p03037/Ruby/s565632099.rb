#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)
 
 
N,M=gets.split.map(&:to_i)
LRs=(0...M).map{gets.split.map(&:to_i)}
 
lmax=-1
rmin=N+1
LRs.each do |l,r|
  lmax=[l,lmax].max
  rmin=[r,rmin].min
end
if rmin<lmax
  p 0
else
  p rmin-lmax+1
end