N,M = gets.split(' ').map(&:to_i)
array = gets.split(' ').map(&:to_i).sort
M.times do
  num = array.pop
  num /= 2
  idx = array.bsearch_index { |x| x >= num } || 0
  array.insert(idx, num)
end
puts array.inject(:+)