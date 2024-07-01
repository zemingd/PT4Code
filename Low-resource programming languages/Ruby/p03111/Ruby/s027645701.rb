def smaller(a, b)
    if a < b then
        return a
    else
        return b
    end
end
input = STDIN.readlines.map{|line|line.strip.split()}
line = input.shift

n = line[0].to_i
a = line[1].to_i
b = line[2].to_i
c = line[3].to_i
l_list = input.map{|i|i[0].to_i}
usage = [0, 1, 2, 3]
stack = [[0, 0, 0, 0, 0]]
min = 10**9
while stack.size > 0 
    temp = stack.pop
    if temp[0] == n then
        if temp[1] > 0 && temp[2] > 0 && temp[3] > 0 then
            min = smaller(min, (a - temp[1]).abs + (b - temp[2]).abs + (c - temp[3]).abs + temp[4] - 30)
        end
    else
        stack.push([temp[0] + 1, temp[1] + l_list[temp[0]], temp[2], temp[3], temp[4] + 10])  
        stack.push([temp[0] + 1, temp[1], temp[2] + l_list[temp[0]], temp[3], temp[4] + 10])  
        stack.push([temp[0] + 1, temp[1], temp[2], temp[3] + l_list[temp[0]], temp[4] + 10])  
        stack.push([temp[0] + 1, temp[1], temp[2], temp[3], temp[4]])
    end
end

puts(min)