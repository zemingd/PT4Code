n = gets.to_i

m = 100000

n.times do
    m = (m * 1.05).ceil
end

puts m
