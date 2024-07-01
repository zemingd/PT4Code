while line = gets.chomp
  nums = line.split(" ").map(&:to_i)
  break if nums[0] == 0 && nums[1] == 0
  print nums.sort.join(" "), "\n"
end