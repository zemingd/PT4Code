inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

n = line[0].to_i
m = line[1].to_i

root_size = []
n.times do |i|
    root_size.push({
        :root => i,
        :size => 1,
        :children => []
    })
end
usage_list = [n * (n - 1) / 2]
inputs.reverse.each do |input|
    a = input[0].to_i - 1
    b = input[1].to_i - 1

    ret_size = 0
    if root_size[a][:root] != root_size[b][:root] then
        ret_size = root_size[root_size[a][:root]][:size] * root_size[root_size[b][:root]][:size]
        if root_size[root_size[a][:root]][:size] < root_size[root_size[b][:root]][:size] then
            root_size[root_size[b][:root]][:size] += root_size[root_size[a][:root]][:size]
            children = [root_size[root_size[a][:root]][:root]] + root_size[root_size[a][:root]][:children]
            children.each do |c|
                root_size[c][:root] = root_size[root_size[b][:root]][:root]
                root_size[c][:size] = 0
                root_size[c][:children] = []
            end
            root_size[root_size[b][:root]][:children] += children
        else
            root_size[root_size[a][:root]][:size] += root_size[root_size[b][:root]][:size]
            children = [root_size[root_size[b][:root]][:root]] + root_size[root_size[b][:root]][:children]
            children.each do |c|
                root_size[c][:root] = root_size[root_size[a][:root]][:root]
                root_size[c][:size] = 0
                root_size[c][:children] = []
            end
            root_size[root_size[a][:root]][:children] += children
        end
    end
    usage_list.unshift(usage_list[0] - ret_size)
end
usage_list.shift
usage_list.each do |usage|
    puts(usage)
end
