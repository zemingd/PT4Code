n,k=gets.split.map &:to_i
a=[0]*k
tmp=1
bef=0
gets.split.each_with_index do |vv,i|
  v=vv.to_i
  if i >= k
    puts tmp/a[i%k]*v > tmp ? 'Yes' : 'No'
  else
    tmp*=v
  end
  a[i%k] = v
end
