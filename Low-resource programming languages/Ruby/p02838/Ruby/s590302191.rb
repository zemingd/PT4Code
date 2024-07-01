sum = 0
N = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
nums.each_with_index do |former, i|
  nums[i+1,nums.length].each_with_index do |latter|
    sum += former ^ latter
  end
end
puts sum % (10 ** 9 + 7)
