n, k, q = gets.split.map(&:to_i)
arr = n.times.map { k-q }
a = q.times.map { gets.to_i-1}
a.each do |i|
  arr[i] += 1
end
 
arr.each do |el|
  puts el > 0 ? 'Yes' : 'No'
end