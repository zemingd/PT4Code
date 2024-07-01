input = Array.new(6)
time = 0
min = 1000000000000000
6.times do | i |
    input[i] = gets.chomp.to_i

    if i != 0 && min > input[i] then
        min = input[i]
    end
end

cnt = (input[0] / min).ceil
cnt += 5

puts cnt

