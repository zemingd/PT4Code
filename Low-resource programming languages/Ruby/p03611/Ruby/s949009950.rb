N=readline.to_i

sorted_a = readline.split.map(&:to_i).sort
grouped_a = sorted_a.group_by{|x|x}

count_with_zero = []
(sorted_a.last+1).times do |number|
  numbers = grouped_a[number] || []
  count_with_zero.push(numbers.size);
end

# p count_with_zero

delta_cumulative_count = 
  count_with_zero.map.with_index do |count, i|
    i>0 ? 
      count_with_zero[i-1].to_i + count_with_zero[i].to_i + count_with_zero[i+1].to_i
    :
      count_with_zero[i].to_i + count_with_zero[i+1].to_i
  end

p delta_cumulative_count.max


