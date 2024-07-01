line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
k = line[1]

num = Array.new(n + 1, 0)
used_number_sum = 0

gets.chomp.split(" ").map(&:to_i).each do |i|
    if num[i] == 0
        used_number_sum += 1
    end
    num[i] += 1
end

if used_number_sum - k <= 0
    min = Array.new(0, 10 ** 6)
else
    min = Array.new(used_number_sum - k, 10 ** 6)
end
num.each_with_index do |total, i|
    next if total == 0
    min.length.times do |j|
        if total < min[j]
            min.insert(j, total)
            min.delete_at(-1)
            break
        end
    end
end

puts min.sum
