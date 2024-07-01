n = gets.to_i
nums = gets.split(' ').map(&:to_i)
count = 0
accurate_num_count = 0
(n-1).times do |a|
    #大丈夫なところは飛ばしたい現状初めからいちいち見てしまう。
    # puts 'a=', a
        accurate_num_count..(nums.length).times do |b| 
        if nums[b] == b+1
            next
        else
            # puts 'b=', b
            nums.delete_at(nums.index(nums[b]))
            count += 1
            accurate_num_count = b
            break
        end
    end
end
if nums[0] != 1
    puts -1
else
    puts count
end
