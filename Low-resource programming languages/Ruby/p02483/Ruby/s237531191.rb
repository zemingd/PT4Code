while line = gets do
    nums = line.split(" ")
    a = nums[0].to_i
    b = nums[1].to_i
    c = nums[2].to_i
    if a > b
    	a,b = b,a
    end
    if (b > c)
    	b,c = c,b
    end
    if (a > b)
    	a,b = b,a
    end

    puts a.to_s + ' ' + b.to_s + ' ' + c.to_s
end