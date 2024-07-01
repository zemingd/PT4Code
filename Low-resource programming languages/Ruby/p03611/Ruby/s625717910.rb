N=readline.to_i

sorted_a = readline.split.map(&:to_i).sort
grouped_a = sorted_a.group_by{|x|x}

count_with_zero = []
sorted_a.last.times do |number|
  numbers = grouped_a[number] || []
  count_with_zero.push(numbers.size);
end

delta_cumulative_count = []
(count_with_zero.size+1).times do |count|
  current = count_with_zero[count-1].to_i + count_with_zero[count].to_i + count_with_zero[count+1].to_i
  delta_cumulative_count.push(current)
end

p delta_cumulative_count.max


