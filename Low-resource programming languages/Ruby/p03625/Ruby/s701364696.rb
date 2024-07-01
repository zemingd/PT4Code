require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

memo = {}
a_n.each do |a|
    memo[a] ||= 0
    memo[a] += 1
end

sticks = memo.select {|k, v| v >= 2 }.keys.sort!

if sticks.length < 2
    puts 0
else
    puts sticks[-1] * sticks[-2]
end
