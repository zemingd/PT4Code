while input = gets
    nums = input.chomp.split.map(&:to_i)
    puts (nums[0] + nums[1]).to_s.length
end

