input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)
input_lines3 = gets.chop.split.map(&:to_i)
input_lines4 = gets.chop.split.map(&:to_i)

count = 0
n = input_lines[0]
for i in 0...n
    count = count + input_lines3[(input_lines2[i] - 1)]
    if i != 0 && input_lines2[i-1] + 1 == input_lines2[i] 
        count = count + input_lines4[(input_lines2[i] - 2)]
    end
end

puts count