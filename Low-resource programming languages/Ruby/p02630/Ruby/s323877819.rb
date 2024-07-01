n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i).slice(0,n)
q = gets.to_i
changes = []
q.times{
    s,r = gets.chomp.split(" ").map(&:to_i).slice(0,2)
    for i in 0..nums.length - 1
        (nums[i] == s) && nums[i] = r
    end
    puts nums.sum
}
