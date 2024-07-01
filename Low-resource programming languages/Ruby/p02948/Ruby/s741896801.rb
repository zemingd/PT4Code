n,m=gets.chomp.split(" ").map(&:to_i)

ret = Array.new(m, 0) # [最終日, .... , 最初の日]

inputs = []
(0..(n-1)).each do |i|
    a,b=gets.chomp.split(" ").map(&:to_i)
    inputs[i] = [a, b]
end

inputs = inputs.sort {|a, b| b[1] <=> a[1] }

path = (0..m-1).to_a
inputs.each do |input|
    a = input[0]
    b = input[1]
    if m >= a
        target = a-1
        while true do
            target = path[target]
            break if target == nil || target == path[target]
        end

        next if target == nil
        ret[target] = b
        if a == m
            path[target] = nil
        else
            path[target] = path[target+1]
        end
    end
end

puts ret.reduce(&:+)

