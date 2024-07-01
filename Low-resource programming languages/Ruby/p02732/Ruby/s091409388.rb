N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

counter = 0
balls_memo = {}

array.uniq.each do |num|
  num_count = array.count(num)
  balls_memo[num] = num_count
  # p num
  counter += (num_count * (num_count - 1)) / 2 if num_count != 0
end

# puts counter

N.times.each do |k|
  k_balls_count = balls_memo[array[k]] - 1
  puts counter - k_balls_count
end
