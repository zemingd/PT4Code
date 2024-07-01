io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
u=a.sort.chunk_while{|a,b|a==b}.select{|ar|ar.size>=2}
#[[1,1],[2,2]]
if u.size<2
  puts 0
elsif u[-1].size>=4
  puts u[-1][0]**2
else
  puts u[-1][0]*u[-2][0]
end
