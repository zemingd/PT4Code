n,m,*lrs=$<.read.split.map(&:to_i)
lrs=lrs.each_slice(2)

left = 0
right = n-1

lrs.each do |l,r|
  left = [l,left].max
  right = [r,right].min
end

p [right - left + 1,0].max
