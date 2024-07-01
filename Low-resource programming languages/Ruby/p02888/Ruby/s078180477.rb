n = gets.to_i
sticks = gets.split.map(&:to_i).sort
sum = 0
(0...n - 2).each do |index_1|
  (index_1 + 1...n - 1).each do |index_2|
    max = sticks[index_1] + sticks[index_2]
    sum += (sticks.bsearch_index { |s| s >= max } || n) - index_2 - 1
  end
end
puts sum
