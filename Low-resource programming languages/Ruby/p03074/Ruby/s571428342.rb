n,k=gets.split.map &:to_i
s=gets.chomp
t=s.chars.chunk(&:to_i).map{|a,b|[a,b.size]}
t.unshift([1,0]) if t[0][0]!=1
t.push([1,0]) if t[-1][0]!=1
u=[x=0]
t.map{|a,b|u<<x+=b}
if k>=u.size/2
p u[-1]
else
p (u.size/2-k).times.map{|i|u[i*2+k*2+1]-u[i*2]}.max
end