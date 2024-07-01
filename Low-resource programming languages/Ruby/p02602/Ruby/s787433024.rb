n,k=gets.split.map &:to_i
arr=[0]*k
tmp=1
bef=0
a=gets.split
a.length.times do |i|
  v=a[i].to_i
  arr[i%k] = v
  tmp = arr.inject(:*)
  if i >= k
    puts tmp > bef ? 'Yes' : 'No'
  end
  bef = tmp
end
