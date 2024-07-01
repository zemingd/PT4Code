n = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)
deducted_numbers = numbers.map.with_index { |item, index| item - (index + 1) }
deducted_numbers.sort!
median = deducted_numbers[deducted_numbers.size / 2]
answer_numbers = deducted_numbers.map { |item| (item - median).abs }
puts answer_numbers.inject(:+)