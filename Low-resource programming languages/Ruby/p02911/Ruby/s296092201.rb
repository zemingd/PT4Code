n, k, q = gets.split.map(&:to_i)
arr = n.times.map { k }

q.times do
  a = gets.to_i - 1
  arr.each_with_index.reject {|el,i| i == a}.each do |el,i|
    arr[i] = el - 1
  end
end

arr.each do |el|
  puts el > 0 ? 'Yes' : 'No'
end
