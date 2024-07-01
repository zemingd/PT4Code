require 'pp'

a, b, c, k = gets.split.map(&:to_i)

if (a+b) >= k
    puts a
    exit 0
end

k -= (a+b)

puts (a-k)
