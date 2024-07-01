n = gets.to_i
p_input = gets.chomp.split
n.times do |i|
    p_input[i] = p_input[i].to_i
end

count = 0
n.times do |i|
    result = true
    (i + 1).times do |j|
        if !(p_input[i] <= p_input[j])
            result = false
            break
        end
    end
    count += 1 if result
end

puts count