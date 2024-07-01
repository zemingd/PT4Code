inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

n = line[0].to_i
v_list = inputs.shift
v_counts = [Hash.new(0), Hash.new(0)]
n.times do |i|
    v_counts[i % 2][v_list[i].to_i] += 1
end

sorted0 = v_counts[0].sort do |a, b|
    b[1] <=> a[1]
end
sorted1 = v_counts[1].sort do |a, b|
    b[1] <=> a[1]
end
whole = n >> 1
if sorted0[0][0] != sorted1[0][0] then
    puts(whole - sorted0[0][1] + whole - sorted1[0][1])
else
    if sorted0.size > 1 && sorted1.size > 1 then
        puts([
            whole - sorted0[0][1] + whole - sorted1[1][1],
            whole - sorted0[1][1] + whole - sorted1[0][1],
        ].min)
    elsif sorted0.size > 1 then
        puts(whole - sorted1[1][1])
    elsif sorted1.size > 1 then
        puts(whole - sorted1[0][1])
    else
        puts(whole)
    end
end