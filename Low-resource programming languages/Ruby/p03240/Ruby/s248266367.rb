n=gets.to_i
x=[];y=[];z=[]
kai=0
n.times{|i|x[i],y[i],z[i]=gets.split.map &:to_i;kai=i if z[i]>0}
for i in 0..100
  for j in 0..100
    ans=1
    h=z[kai]+(i-x[kai]).abs+(j-y[kai]).abs
    n.times{|g|
      if z[g] != [h-(i-x[g]).abs-(j-y[g]).abs,0].max
        ans=0
      end
    }
    break if ans==1
  end
  break if ans==1
end
puts [i,j,h]*' '
