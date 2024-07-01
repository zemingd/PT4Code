while nums = gets.split(' ') do
  exit if nums[0].to_i == 0 && nums[1].to_i
  nums.sort! { |x,y| x.to_i <=> y.to_i }
  printf "%s %s", nums[0], nums[1]
end