a = gets.chomp
b = gets.chomp
c = gets.chomp
d = gets.chomp
e = gets.chomp
arr = [a, b, c, d, e]

num_of_1 = [a[-1].to_i, b[-1].to_i, c[-1].to_i, d[-1].to_i, e[-1].to_i]
min = num_of_1[0]
4.times do |i|
    if num_of_1[i+1] != 0 && num_of_1[i+1] < min
        min = num_of_1[i+1]
    end
end

sum = 0
5.times do |i|
    if num_of_1.find_index(min) != i
        sum += arr[i].to_i
        if sum.to_s[-1].to_i != 0
            sum += 10 - sum.to_s[-1].to_i
        end
    end
end

puts sum + arr[num_of_1.find_index(min)].to_i