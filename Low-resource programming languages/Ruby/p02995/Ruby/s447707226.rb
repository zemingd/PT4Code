A,B,C,D=gets.split.map(&:to_i)
l=C.lcm(D)
cz = B/C - (A-1)/C
if A>B
  p 0
elsif C==D
  p B-A+1-cz
else
  dz = B/D - (A-1)/D
  lz = B/l - (A-1)/l
  p B-A+1-(cz+dz-lz)
end