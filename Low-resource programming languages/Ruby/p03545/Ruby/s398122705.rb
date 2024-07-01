nums = gets.chomp.split('').map(&:to_i)

ans = 0
['+','-'].repeated_permutation(3) do |bits|
    ans = nums[0]
    1.upto(3) do |i|
        if bits[i -1] == '+'
            ans += nums[i]
        else
            ans -= nums[i]
        end
    end
    if ans == 7
        puts("#{nums[0]}#{bits[0]}#{nums[1]}#{bits[1]}#{nums[2]}#{bits[2]}#{nums[3]}=7")
        break
    end
end