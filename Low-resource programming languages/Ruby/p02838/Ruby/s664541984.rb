#require 'pp'

n = gets.chomp!.to_i
a_n = gets.split.map(&:to_i)

digit_max = 61
memo = [
    Array.new(digit_max, 0),
    Array.new(digit_max, n),
]

a_n.each do |a|
    tmp = a
    dig = 0
    while tmp != 0
        if tmp & 1 == 1
            memo[0][dig] += 1
            memo[1][dig] -= 1
        end
        tmp >>= 1
        dig += 1
    end
end