require 'pp'

n, k = gets.split.map(&:to_i)
count = 0
while n > 0
    count += 1
    n /= k
end

puts count

