n = gets.to_i

hight = []
AS = n.times{ gets.to_i}

max = 0
count = 0
n.times do |i|
    if max <= hight[i]
        count += 1
        max = hight[i]
    end
end

puts count