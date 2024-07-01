tasks = gets.chomp.split(' ').map(&:to_i)

costs = []
[0, 1, 2].permutation.to_a.each do |order|
  costs << (tasks[order[1]] - tasks[order[0]]).abs + (tasks[order[2]] - tasks[order[1]]).abs
end

puts costs.min
