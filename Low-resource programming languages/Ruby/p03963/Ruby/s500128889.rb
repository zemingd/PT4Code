require 'pp'

n, k = gets.split.map(&:to_i)

ans = k
2.upto(n) do |i|
    ans = ans * (k - 1)
end

puts ans
