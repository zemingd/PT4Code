op1, op2, op3 = gets.split.map(&:to_i)
array = [op1,op2,op3]
for n in 1..3
    for num in 1..2 
        if array[num-1] > array[num] then
            tmp = array[num-1]
            array[num-1] = array[num]
            array[num] = tmp
        end
    end
end
for num in 1..3 
    print array[num-1]
    if num!=3
        print " "
    end
end

print "\n"