n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i).slice(0,n)
q = gets.to_i
q.times{
    s,r = gets.chomp.split(" ").map(&:to_i).slice(0,2)
    sum = 0
    for i in 0..nums.length - 1
        (nums[i] == s) && nums[i] = r
        sum += nums[i]
    end
    puts sum
}

