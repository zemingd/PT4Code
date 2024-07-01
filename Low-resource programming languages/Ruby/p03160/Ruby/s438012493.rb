n = gets.chomp.to_i
h_n = gets.chomp.split.map(&:to_i)

results = []
n.times do |_|
  results << Float::INFINITY
end

h_n.each.with_index(0) do |h_i, i|
  next results[i] = 0 if i == 0

  cost_from_previous_one = results[i-1] + (h_i - h_n[i-1]).abs
  results[i] = cost_from_previous_one if results[i] > cost_from_previous_one

  next if i == 1

  cost_from_previous_two = results[i-2] + (h_i - h_n[i-2]).abs
  results[i] = cost_from_previous_two if results[i] > cost_from_previous_two
end

puts results[-1]