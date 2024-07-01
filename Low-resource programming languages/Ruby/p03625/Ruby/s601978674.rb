N = gets.to_i
A = gets.split.map(&:to_i)

nums = A.group_by { |x| x }
        .map { |k, v| [ k, v.size ] }
        .to_h

max = []
2.times do |i|
  if nums.select { |k, v| v >= 2 }.size > 0
    max[i] = nums.select { |k, v| v >= 2 }
                 .max_by { |k, v| k }
                 .first
    nums[max[i]] -= 2
  else
    max[i] = 0
  end
end

puts max.inject(1, &:*)