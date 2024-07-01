nums = gets.split.map(&:to_i).sort
if nums[0] == nums[1]
  if nums[1] != nums[2]
    puts "Yes"
  else
    puts "No"
  end
else
  if nums[1] == nums[2]
    puts "Yes"
  else
    puts "No"
  end
end