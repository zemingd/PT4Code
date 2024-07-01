x=gets.to_i
c=x/11*2
x%=11
if x>=1&&x<=6
  c+=1
elsif x>0
  c+=2
end
puts c