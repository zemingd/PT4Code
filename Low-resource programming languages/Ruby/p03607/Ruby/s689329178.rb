require 'pp'

n = gets.chomp!.to_i
memo = {}
n.times do |i|
    a = gets.to_i
    memo[a] ||= 0
    memo[a] += 1
end

puts memo.count {|_, v| v % 2 == 1 }
