object_num = gets.to_i
line = gets.split(" ").map(&:to_i)
line_count = []

for value in 0...object_num do
    line_count.push(0)
    line_count[value] += line.count(line[value]-1)
    line_count[value] += line.count(line[value])
    line_count[value] += line.count(line[value]+1)    
end
puts line_count.max