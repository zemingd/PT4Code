n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i).slice(0,n)
q = gets.to_i
changes = []
q.times{
    s,r = gets.chomp.split(" ").map(&:to_i).slice(0,2)
    changes.push({src:s, rep:r})
}

for change in changes
    for i in 0..nums.length - 1
        (nums[i] == change[:src]) && nums[i] = change[:rep]
    end
    puts nums.sum
end

