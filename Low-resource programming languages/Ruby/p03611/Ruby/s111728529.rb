_n = gets.chomp
nums = gets.chomp.split.map(&:to_i)
freq = Array.new(100001){0}
nums.each do |a|
    freq[a] += 1
end
count = Array.new(100001){0}
100000.times do |i|
    count[i] = freq[i - 1] + freq[i] + freq[i + 1]
end
puts count.max
