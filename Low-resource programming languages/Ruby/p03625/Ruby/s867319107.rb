i=0
N=gets.to_i

a=gets.split(" ").map(&:to_i)
b=[0,0]

N.times{
  if a.count(a[i])>1
    b.push(a[i])
    a.delete(a[i])
  else
  end
  
  i+=1
}


print(b[-1]*b[-2])
