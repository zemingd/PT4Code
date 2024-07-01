n = gets.strip.to_i
nums = gets.strip.split(" ").map(&:to_i)

min = Float::INFINITY
count =  0
nums.each.with_index do |n, i|
  if min >= n
    count += 1
    min = n
  end
end
puts count