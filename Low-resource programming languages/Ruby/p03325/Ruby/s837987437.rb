def n(k)
  c=0
  loop{
  if k%2==0
    c+=1
    k/=2
  else
    return c
  end
  }
end

gets
a=gets.split.map &:to_i
b=0
a.each{|e|b+=n(e)}
p b