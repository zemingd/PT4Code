n = gets.to_i
array = gets.split.map(&:to_i)
ans = 0
n.times do |i|
    exist_flag = false
    array.each_index do |j|
        next if i == j
        if array[i] % array[j] == 0
            exist_flag = true
            break
        end
    end
    ans = ans + 1 unless exist_flag
end

puts ans
