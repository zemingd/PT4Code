nums = gets.split("").map(&:to_i)
 
 
["+", "-"].repeated_permutation(nums.size - 1) do |a|
    ans = 0
    4.times do |i|
        if i == 0
            ans = nums[i]
        else
            if a[i - 1] == "+"
                ans += nums[i]
            else
                ans -= nums[i]
            end
        end
        if ans == 7
          puts "#{nums[0]}#{a[0]}#{nums[1]}#{a[1]}#{nums[2]}#{a[2]}#{nums[3]}=7"
          exit 0
        end
    end
end