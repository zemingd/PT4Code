input_lines = gets.chop.split("").map(&:to_s)
input_lines2 = gets.chop.split("").map(&:to_s)

count = 0
for i in 0...(input_lines.size - 1)
    if input_lines[i] == input_lines2[i]
        count = count + 1 
    end
end
puts count