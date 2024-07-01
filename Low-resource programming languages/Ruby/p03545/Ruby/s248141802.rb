nums = gets.split("").map(&:to_i)
paths = [[nums[0], nums[0]]]
1.upto(3) do |i|
  tmp = paths.flat_map do |v1, v2|
    [
      [v1 + nums[i], "#{v2}+#{nums[i]}"],
      [v1 - nums[i], "#{v2}-#{nums[i]}"],
    ]
  end
  paths = tmp
end

result = paths.find { |v1, _| v1 == 7  }
puts "#{result[1]}=7"