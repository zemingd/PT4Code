n,k=gets.split.map &:to_i
a=[0]*k
tmp=1
bef=0
gets.split.each_with_index do |vv,i|
  v=vv.to_i
  a[i%k] = v
  tmp = a.inject(:*)
  if i >= k
    puts tmp > bef ? 'Yes' : 'No'
  end
  bef = tmp
end

