n = gets.to_i
nums = gets.split(' ').map(&:to_i)
num_counts = {}
nums.each do |i|
  num_counts[i] = 0 if !num_counts.has_key?(i)
  num_counts[i] = num_counts[i] + 1
end

nums.each do |i|
  result = 0
  num_counts.each do |key, value|
    value = value - 1 if key == i
    result = result + (value * (value - 1)) / 2 if value > 1
  end
  p result
end

