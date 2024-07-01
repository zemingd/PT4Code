class Main
  while true
      nums = gets.split.map(&:to_i)
      break if (nums[0] == 0 && nums[1] == 0)
      puts nums.sort.join(" ")
  end
end
