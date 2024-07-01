n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
bc=[]
m.times{bc<<gets.split.map(&:to_i)}
bc.sort!{|x,y|y[1]<=>x[1]}
sum=0
0.upto(n-1){|i|
  j=0
  if bc.size>0 and a[i]<bc[0][1]
    j=bc[0][1]
    bc[0][0]-=1
    if bc[0][0]==0
      bc.shift
    end
  else
    j=a[i]
  end
  sum+=j
}
puts sum