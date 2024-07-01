n = gets.to_i

nums = gets.split.map(&:to_i)

res = 0

current_max = 0

nums.each do |i|
    next if current_max > i
    res += 1
    current_max = i
end

puts res