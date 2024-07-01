n,k = gets.split.map(&:to_i)
nums = {}
n.times do
    a,b = gets.split.map(&:to_i)
    if nums[a] == nil
        nums[a] = b
    else
        nums[a] += b
    end
end

nums = Hash[nums.sort]

cnt = 0
nums.each do |i,v|
    cnt += v
    if cnt >= k
        puts i
        exit
    end
end