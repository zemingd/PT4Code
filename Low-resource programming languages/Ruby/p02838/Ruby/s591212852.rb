#require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map!(&:to_i)
    
digit_max = a_n.max.to_s(2).length
memo = [
    Array.new(digit_max, 0),
    Array.new(digit_max, n),
]

a_chs = []
a_n.each_with_index do |a, i|
    tmp = a
    dig = 0
    chs = []
    while tmp != 0
        if tmp & 1 == 1
            memo[0][dig] += 1
            memo[1][dig] -= 1
            chs << 1
        else
            chs << 0
        end
        tmp >>= 1
        dig += 1
    end

    a_chs << chs
end
=begin
MOD = (10 ** 9) + 7
sum = 0
count = Array.new(digit_max, 0)
digit_max.times do |dig|
    s = (2 ** dig) * (memo[0][dig] * memo[1][dig])
    sum = (sum + s) % MOD
end
    
puts sum
=end
