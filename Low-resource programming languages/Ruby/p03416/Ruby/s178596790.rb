a,b=gets.split.map &:to_i
c=0
a.upto(b) do |i|
  s=i.to_s
  c+=1 if s==s.reverse
end
p c