def priority_push(array:, num:)
  index = array.bsearch_index { |i| i <= num}
  if index.nil?
    array.push(num)
  else
    array.insert(index, num)
  end
end

N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

arr = arr.sort.reverse

M.times do
  cost = arr.shift / 2
  priority_push(array: arr, num: cost)
end

puts arr.inject(:+)