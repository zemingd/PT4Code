module Limitter
    LIMIT = 10 ** 18
end


count = gets.to_i

input_num = gets.chomp
num_array = input_num.split(' ').map(&:to_i)

ans = 1
num_array.map { |num| ans *= num }

if ans > Limitter::LIMIT
    ans = -1
end

p ans