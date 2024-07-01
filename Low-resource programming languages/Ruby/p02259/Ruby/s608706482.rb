len = gets.to_i
nums = gets.split.map(&:to_i)
cnt = 0
0.upto(len-1) do |i|
  (len-1).downto(i+1) do |j|
    if nums[j] < nums[j-1]
      nums[j], nums[j-1] = nums[j-1], nums[j]
      cnt += 1
    end
  end
end
puts nums * ' '
puts cnt