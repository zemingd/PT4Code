A,B,C,D=gets.split.map(&:to_i)
l=C.lcm(D)
cz = (B.to_f/C).floor - (A.to_f/C).ceil + 1
if A>B
  p 0
elsif C==D
  p B-A+1-cz
else
  dz = (B.to_f/D).floor - (A.to_f/D).ceil + 1
  lz = (B.to_f/l).floor - (A.to_f/l).ceil + 1
  p B-A+1 - (cz+dz-lz)
end