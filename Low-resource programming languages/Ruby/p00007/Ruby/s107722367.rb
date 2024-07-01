n = gets.to_i

m = 100000

n.times do
    m = (m * 1.05 / 1000).ceil * 1000
end

puts m 
