N=gets.chomp.to_i
a={}
N.times{
  t=gets.chomp.to_i
  if a[t]==nil then
    a[t]=1
  else
    a[t]+=1
  end
}
a.each{|k,v|
  a.delete(k) if v%2==0  
}
puts a.size
