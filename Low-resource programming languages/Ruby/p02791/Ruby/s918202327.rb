p = gets.to_i
nums = gets.split(' ').map(&:to_i)

c = 0
nums.each.with_index(0) do |n, i|
  c += 1 if nums[0..i].all? { |nn| n <= nn }
end

puts c