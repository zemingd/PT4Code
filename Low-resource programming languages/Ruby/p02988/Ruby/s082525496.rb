_,*a=`dd`.split.map &:to_i
c=0
a.each_cons(3) do |n|
  c+=1 if n[1]==n.sort[1]
end
p c