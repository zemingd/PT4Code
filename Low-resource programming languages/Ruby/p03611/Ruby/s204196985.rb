n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
freq = Array.new(100001){0}
nums.each do |a|
    freq[a] += 1
end
count = []
n.times do |i|
    count << freq[nums[i] - 1] + freq[nums[i]] + freq[nums[i] + 1]
end
puts count.max
