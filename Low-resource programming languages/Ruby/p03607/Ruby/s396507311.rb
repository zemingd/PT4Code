n = gets.to_i
arr = []
n.times do
  num = gets.to_i
  if arr.bsearch{|i| i >= num} == num
    arr.delete_at(arr.bsearch_index{|i| i >= num})
  else
    arr.push(num)
  end
  arr.sort!
end
puts arr.size