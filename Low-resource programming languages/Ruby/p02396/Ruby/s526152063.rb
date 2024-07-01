nums = Array.new
nums[0] = 0
i = 1
 
loop {
    nums[i] = gets.to_i
    if nums[i] == 0
        break
    end
    i += 1
}
 
i -= 1
cnt = 1
 
 
i.times do
    print "Case ",cnt,": ",nums[cnt],"\n"
    cnt += 1
end
