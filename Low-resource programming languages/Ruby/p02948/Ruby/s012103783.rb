N,M=gets.split.map &:to_i
as = N.times.map{gets.split.map &:to_i}
# p as
as.sort!{|a,b|(a[1]<=>b[1])*(-1)}
cnt=0
# p as
for i in 1..M
  c=as.find_all{|x|x[0]<=i}
  if !c.empty?
    cnt+=c[0][1]
    as.delete(c[0])
  end
end
puts cnt
