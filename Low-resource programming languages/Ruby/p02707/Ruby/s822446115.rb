require 'pp'

n = gets.to_i
a_n = gets.split.map(&:to_i)

memo = Hash.new(0)

a_n.each do |i|
    memo[i] += 1
end

1.upto(n) do |i|
    puts memo[i]
end
