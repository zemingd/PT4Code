line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
k = line[1]

number_total = Array.new(n + 1, 0)
used_number_sum = 0

gets.chomp.split(" ").map(&:to_i).each do |i|
    if number_total[i] == 0
        used_number_sum += 1
    end
    number_total[i] += 1
end
number_total.delete(0)

number_total.sort!

total = 0
for i in 0..(number_total.length - k - 1)
    total += number_total[i]
end

puts total
