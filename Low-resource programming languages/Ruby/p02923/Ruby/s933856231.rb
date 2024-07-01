n = gets.to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

counts = []
i = 0
while i < n
    now_height = h[i]
    j = i + 1
    count = 0
    while j < n
        if now_height >= h[j]
            count += 1
            now_height = h[j]
            i += 1
            j += 1
        else
            break
        end
    end
    counts << count
    i += 1
end

puts counts.max