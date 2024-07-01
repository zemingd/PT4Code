n = gets.to_i
nums = gets.split.map(&:to_i)
count = 0
for c in 0..(n-2) do #01234
  for d in 0..n-c-2 do #0=>0123 1=>012 3=>0
    if nums[d] > nums[d+1]
      nums[d], nums[d+1] = nums[d+1], nums[d]
      count += 1
    end
  end
end
puts nums.join(" ")
puts count
