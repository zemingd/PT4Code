n,k=gets.split.map &:to_i
a=gets.split.map &:to_i
a.reverse!
arr=[]
(n-k+1).times do |i|
  arr << a[i, k].inject(:*)
end
arr.reverse!
arr.each_with_index do |v,i|
  next if i == 0
  puts arr[i-1] < v ? 'Yes' : 'No'
end