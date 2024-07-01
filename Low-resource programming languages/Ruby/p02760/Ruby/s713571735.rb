a_1 = gets.split.map(&:to_i)
a_2 = gets.split.map(&:to_i)
a_3 = gets.split.map(&:to_i)
n = gets.chomp.to_i
b = []
n.times do |i|
    b[i] = gets.chomp.to_i
end
result = Array.new(9,0)
for i in 0..2
    for j in 0..(n-1)
        if a_1[i] == b[j]
            result[i] = 1
        end
    end
end

for i in 0..2
    for j in 0..(n-1)
        if a_2[i] == b[j]
            result[i+3] = 1
        end
    end
end

for i in 0..2
    for j in 0..(n-1)
        if a_3[i] == b[j]
            result[i+6] = 1
        end
    end
end

if result[0] == 1 && result[1] == 1 && result[2] == 1 ||
    result[0] == 1 && result[3] == 1 && result[6] == 1 ||
    result[0] == 1 && result[4] == 1 && result[8] == 1 ||
    result[1] == 1 && result[4] == 1 && result[7] == 1 ||
    result[2] == 1 && result[5] == 1 && result[8] == 1 ||
    result[2] == 1 && result[4] == 1 && result[6] == 1 ||
    result[3] == 1 && result[4] == 1 && result[5] == 1 ||
    result[6] == 1 && result[7] == 1 && result[8] == 1
    puts "Yes"
else
    puts "No"
end