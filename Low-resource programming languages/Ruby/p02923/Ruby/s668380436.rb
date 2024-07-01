n = gets.to_i
nums = gets.split.map &:to_i
cnt = [0]*n
 
(n-2).times do |i|
    for k in i...n-1
        if nums[k]>=nums[k+1]
            cnt[i] += 1
        else 
            break
        end
    end
end
 
puts cnt.max
