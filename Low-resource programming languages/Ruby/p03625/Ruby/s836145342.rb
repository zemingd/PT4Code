i=0
N=gets.to_i

a=gets.split(" ").map(&:to_i)
b=[0,0]

a=a.sort{|a,b|b<=>a}

until i==2 do

if a[0]==a[1]
  b[i]=a[0]
  i+=1
  a.slice!(0,2)
else 
  a.slice!(0)
end

end

print(b[0]*b[1])