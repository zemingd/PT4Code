while nums = gets.split(' ') do
  nums.map! { |num| num.to_i }
  break if nums[0] == 0 && nums[1] == 0
  nums.sort! { |x,y| x <=> y }
  printf "%d %d", nums[0], nums[1]
end