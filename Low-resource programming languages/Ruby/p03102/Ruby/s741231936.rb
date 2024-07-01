attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

attr_0 = attrs.shift
N = attr_0[0]
M = attr_0[1]
B = attrs.shift
C = attr_0[2]
solved = 0
attrs.each do |a|
    solution = 0
    for i in 0..M do
       solution += ( a[i].to_i * B[i].to_i )
    end
    solution += C
    if solution > 0 then
        solved += 1
    end
end

print solved