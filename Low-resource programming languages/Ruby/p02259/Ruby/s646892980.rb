n = gets.chomp.to_i

nums = gets.chomp.split(" ").map(&:to_i)

change_count = 0
n.times do |i|
  a = n - 1
  i += 1
  while true do
    if a < i
      break
    end
    if nums[a] < nums[a - 1]
      tmp = nums[a]
      nums[a] = nums[a - 1]
      nums[a- 1] = tmp
      change_count += 1
      a -= 1
    else
      a -= 1
    end
  end
end

puts nums.join(" ")
puts change_count
