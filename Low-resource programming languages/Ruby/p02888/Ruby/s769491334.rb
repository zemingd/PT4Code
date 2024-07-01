n = gets.to_i
sticks = gets.split.map(&:to_i).sort
sum = 0
sticks.each_with_index do |stick_1, index_1|
  sticks.each_with_index do |stick_2, index_2|
    next if index_2 <= index_1
    max = stick_1 + stick_2
    sum += (sticks.bsearch_index { |s| s >= max } || n) - index_2 - 1
  end
end
puts sum
