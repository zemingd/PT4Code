a_start, a_end, b_start, b_end = gets.split.map(&:to_i)

a_range = (a_start..a_end).to_a
b_range = (b_start..b_end).to_a
if (a_range & b_range).size.positive?
  puts (a_range & b_range).size - 1
else
  puts 0
end
