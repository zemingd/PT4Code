n = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)

if !nums.include?(1) then
    puts -1
else
    cnt = 0
    ptr = 0
    tgt = 1
    n.times {|i|
        if nums[i] == tgt then
            cnt += i - ptr
            ptr = i + 1
            tgt += 1
        end
    }
    cnt += n - ptr
    puts cnt
end
