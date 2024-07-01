N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

cumulative_sums = [0]

H.each do |h|
  cumulative_sums.push [cumulative_sums.last, h].max
end

cumulative_sums.shift

count = 0
H.each_with_index do |height, i|
  count += 1 if height == cumulative_sums[i]
end

puts count
