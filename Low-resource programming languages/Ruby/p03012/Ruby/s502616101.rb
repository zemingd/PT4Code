n = gets.to_i

weights = gets.chomp.split(" ").map(&:to_i)

sum_from_left = []
sum_from_right = []

sum_left = 0
weights.each do |weight|
  sum_left += weight
  sum_from_left.push(sum_left)
end

sum_right = 0
weights.reverse.each_with_index do |weight|
  sum_right += weight
  sum_from_right.push(sum_right)
end

sum_from_left.pop
sum_from_right.pop

sum_from_right.reverse!

minimum = 100000
# answer = 0

(n - 1).times do |index|
  if minimum > (sum_from_left[index] - sum_from_right[index]).abs
    minimum = (sum_from_left[index] - sum_from_right[index]).abs
    # answer = index + 1
  end
end

puts minimum