c=Array.new(8)
cnt=0
N=gets.to_i
a=gets.split
N.times{|i|
  t=a[i].to_i/400
  if t>=8
    cnt+=1
  else
    c[t]=true
  end
}
min=c.compact.size
print min," ",min+cnt,"\n"
