N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
count_array = Array.new(N, 0)

array.each { |num| count_array[num - 1] += 1 }

total_count = count_array.map do |num|
  (num * num - num) / 2
end.inject(&:+)

N.times.each do |k|
  k_balls_pair_count = count_array[array[k] - 1] - 1
  puts total_count - k_balls_pair_count
end
