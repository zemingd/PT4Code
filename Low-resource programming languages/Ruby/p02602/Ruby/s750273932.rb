n,k = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)

nums.each_with_index do |num, index|
  if index < k
    next
  end
  if nums[index-k] < num
    puts 'Yes'
  else
    puts 'No'
  end
end