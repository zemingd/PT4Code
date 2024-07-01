n, k, q = gets.split.map(&:to_i)
arr = n.times.map { k }
 
q.times do
  a = gets.to_i - 1
  arr = arr.map { |el| el-1 }
  arr[a] += 1
end
 
arr.each do |el|
  puts el > 0 ? 'Yes' : 'No'
end