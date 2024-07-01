input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)
input_lines2.sort!.reverse!
for time in 0...input_lines[1]
    if input_lines2.size == 1 
        input_lines2[0] = input_lines2[0]/2
    else
        for row in 1...input_lines2.size
            if input_lines2[row - 1] >= input_lines2[row]
                input_lines2[row - 1] = input_lines2[row - 1] /2
                break
            end
        end
    end
end

sum = 0 
for item in input_lines2
    sum = item + sum
end
puts sum