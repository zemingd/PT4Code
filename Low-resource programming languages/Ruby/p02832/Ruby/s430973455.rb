n = gets.to_i
nums = gets.split(' ').map(&:to_i)
count = 0
(n-1).times do |a|
    nums.each_with_index{|num,i|
        if num != i+1
            nums.delete_at(nums.index(num))
            count += 1
            # puts nums,count
            break
        end
    }
end
if nums[0] != 1
    puts -1
else
    puts count
end
