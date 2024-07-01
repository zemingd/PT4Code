n = gets.to_i
p_input = gets.chomp.split
n.times do |i|
    p_input[i] = p_input[i].to_i
end

count = 0
min = p_input[0]
n.times do |i|
    result = true
    min = p_input[i] if p_input[i] < min
    result = false if !(p_input[i] <= min)
    count += 1 if result
end

puts count