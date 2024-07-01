input = STDIN.readlines.map{|line|line.strip.split()}
line = input.shift
n = line[0].to_i
m = line[1].to_i

y_list_hash = Hash.new do |h, k|
    h[k] = []
end

for i in input
    y_list_hash[i[0]].push(i[1].to_i)
end
y_list_hash.each_key do |key|
    y_list_hash[key] = y_list_hash[key].sort
end

rank = Hash.new do |h, k|
    h[k] = Hash.new
end
y_list_hash.each_key do |key|
    r = 1
    for y in y_list_hash[key]
        rank[key][y] = r
        r += 1
    end
end

for i in input
    prefix = i[0].to_i
    suffix = rank[i[0]][i[1].to_i]
    puts(sprintf("%06d%06d", prefix, suffix))
end
