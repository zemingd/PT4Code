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

arr = arr.sort

cost = arr.pop
stack = [cost / 2]
stack_max = cost / 2
(M - 1).times do
  before_cost = arr.last

  if before_cost.nil? || before_cost <= stack_max
    arr = (arr + stack).sort
    after_cost = arr.pop / 2

    stack = [after_cost]
    stack_max = after_cost
  else
    stack << arr.pop / 2
  end
end

puts (arr + stack).inject(:+)