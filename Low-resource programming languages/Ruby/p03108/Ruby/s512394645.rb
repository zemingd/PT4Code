inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

n = line[0].to_i
m = line[1].to_i

root_size = []
(n + 1).times do |i|
    root_size.push([i, 1])
end
usage_list = [n * (n - 1) / 2]
inputs.reverse.each do |input|
    a = input[0].to_i
    b = input[1].to_i

    ret_size = 0
    temp = a
    stack_a = [a]
    while root_size[temp][0] != temp
        temp = root_size[temp][0]
        stack_a.push(temp)
    end
    ra = temp

    temp = b
    stack_b = [b]
    while root_size[temp][0] != temp
        temp = root_size[temp][0]
        stack_b.push(temp)
    end
    rb = temp

    if root_size[ra][0] != root_size[rb][0] then
        ret_size = root_size[ra][1] * root_size[rb][1]
        root_size[ra][1] += root_size[rb][1]
        while stack_b.size > 0
            s = stack_b.pop
            root_size[s][0] = ra
            root_size[s][1] = 0
        end
    end

    usage_list.unshift(usage_list[0] - ret_size)
end
usage_list.shift
usage_list.each do |usage|
    puts(usage)
end
