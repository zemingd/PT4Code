#require 'pp'
    
n = gets.chomp!.to_i
a_n = gets.split.map(&:to_i)
    
digit_max = 61
memo = Array.new(digit_max)
digit_max.times do |i|
    memo[i] = [0, n]
end
    
digit_max.times do |d|
    x = 0
    y = n
    a_n.each do |a|
        if a[d] == 1
            x += 1
            y -= 1
        end
    end

    memo[d][0] = x
    memo[d][1] = y
end

MOD = (10 ** 9) + 7
sum = 0
count = Array.new(digit_max, 0)
digit_max.times do |dig|
    s = (2 ** dig) * (memo[dig][0] * memo[dig][1])
    sum = (sum + s) % MOD
end
    
puts sum
