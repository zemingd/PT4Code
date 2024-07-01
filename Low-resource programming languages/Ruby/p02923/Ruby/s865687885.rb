n = gets.to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

counts = []
i = 0
while (i + 1) < n
    count = 0
    previous_height = h[i]
    while previous_height >= h[i + 1]
        previous_height = h[i + 1]
        count += 1
        if i + 2 >= n
            break
        else
            i += 1
        end
    end
    i += 1
    counts << count
end

puts counts.max