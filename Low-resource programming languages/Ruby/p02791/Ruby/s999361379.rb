number = gets.to_i
input = gets.chomp.split(" ")
count = 0
flag = 0
number.times do |i|
    i.times do |j|
        if input[j] < input[i] 
            flag = 1
            break
        elsif input[j] > input[i]
            flag = 0
            break
        end
    end
    if flag == 0
        count += 1
    end
end

puts count