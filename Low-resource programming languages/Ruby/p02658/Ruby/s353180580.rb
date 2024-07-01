count = gets.to_i

input_num = gets.chomp
num_array = input_num.split(' ').map(&:to_i)

ans = 1
num_array.map do |num|
    ans *= num
end

if ans > 10 ** 18
    ans = -1
end

p ans