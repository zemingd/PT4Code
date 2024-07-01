require 'pp'

n, m = gets.split.map(&:to_i)
sum = 0
if n >= 2
    sum += n * (n-1) / 2
end

if m >= 2
    sum += m * (m-1) / 2
end

puts sum
