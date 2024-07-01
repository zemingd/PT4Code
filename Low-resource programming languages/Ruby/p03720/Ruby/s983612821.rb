d=[0]*51
N,M=gets.split.map &:to_i
M.times do
  a,b=gets.split.map &:to_i
  d[a]+=1
  d[b]+=1
end
puts d[1..N]
