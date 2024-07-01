while true
    nums = STDIN.gets.split(" ").map(&:to_i)
    break if (nums[0]==3001&&nums[1]==3001)
    puts nums.sort.join(" ")
end
