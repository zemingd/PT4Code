size = gets.chomp.to_i
nums = gets.strip.split(' ').map(&:to_i)

count = 1
nums.each_with_index do |num, i|
  next if i == 0
  
  west_nums = nums[0...(i)]
  east_nums = nums[(i+1)...(size)]
  if west_nums.max <= num
    count += 1
  end
  if east_nums.size > 0 && east_nums.max < num
    break
  end
end

puts count
