input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)
a = input_lines[0]
maxCount = 0
count = 0
for i in 1...input_lines2.size 
    if input_lines2[i-1] >= input_lines2[i]
        count = count + 1
    else 
        if maxCount < count
            maxCount =  count
        end
        count = 0
    end 
end
if maxCount < count
    maxCount =  count
end
puts maxCount