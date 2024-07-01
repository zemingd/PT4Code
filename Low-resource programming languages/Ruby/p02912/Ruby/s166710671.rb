n, m  = gets.split.map(&:to_i)
costs = gets.split.map(&:to_i)

# dp = Array.new(Array.new(10**5), 10**5)

costs.sort!

m.times do
    costs.sort!
    costs[-1] /= 2
end

puts costs.inject(&:+)
