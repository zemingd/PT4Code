n=gets.to_i
s=0
v=n
while v>0
  s+=v%10
  v/=10
end
puts n%s==0?:Yes: :No