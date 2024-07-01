require 'pp'

a, b, c, k = gets.split.map(&:to_i)

if a >= k
    puts k
    exit 0
end

k -= a

if b >= k
    puts a
    exit 0
end

k -= b

puts (a-k)
