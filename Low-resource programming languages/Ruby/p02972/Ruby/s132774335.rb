require 'pp'

$n = gets.to_i + 1

nums = [0] + gets.split.map(&:to_i)

# p nums

# res = Array.new($n, 0)

def count_right_ones(index, nums)
    mul = 1
    i = index * mul
    res = 0
    # puts "   count: start(#{index})"

    while i < $n - 1
        # puts "   count: nums[#{i}] = #{nums[i]}"
        res += nums[i]
        mul += 1
        i = index * mul
    end
    return res
end

res = []

nums.each_with_index.reverse_each do |num, i|
    next if i == 0
    # puts "==="
    ones = count_right_ones(i, nums)
    ones_mod = ones % 2
    if ones_mod != num
        # puts ones
        # p [i, ones_mod, num]
        # p nums
        nums[i] = 1
        # p nums
        res << i
    end
    # puts "---"        
end

puts res.size
puts res.join(' ') if res.size > 0