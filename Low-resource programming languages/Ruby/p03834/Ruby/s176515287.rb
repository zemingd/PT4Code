# Your code here!
line = gets
str = ''
line.size.times do |index|
    if line[index] == ',' then
        str += ' '
    else
        str += line[index]
    end
end
puts str