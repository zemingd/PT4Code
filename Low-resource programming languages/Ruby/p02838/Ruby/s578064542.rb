#require 'pp'

n = gets.chomp!.to_i
a_n = gets.split.map(&:to_i)

digit_max = 61
memo = Array.new(digit_max)
digit_max.times do |i|
    memo[i] = [0, n]
end

digit_max.times do |d|
    memo[d][0] = a_n.count {|a| a[d] == 1 }
    memo[d][1] = n - memo[d][0]
end