n, m, k = gets.split.map(&:to_i)

a_array = gets.split.map(&:to_i)
b_array = gets.split.map(&:to_i)

num = 0
total_time = 0
a_index = -1
max_num = 0

n.times do |i|
    break if total_time + a_array[i] > k
    total_time = total_time + a_array[i]
    num = num + 1
    a_index = i
end

max_num = num

m.times do |i|
    while (total_time + b_array[i]) > k
        break if a_index == -1
        total_time = total_time - a_array[a_index]
        a_index = a_index - 1
        num = num - 1
    end
    break if (total_time + b_array[i]) > k
    num = num + 1
    max_num = num if num > max_num
    total_time = total_time + b_array[i]
end

puts max_num
