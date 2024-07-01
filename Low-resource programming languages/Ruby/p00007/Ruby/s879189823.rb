amount = 100_000
n = gets.to_i
n.times{
    amount *= 1.05
    amount = (amount / 1000).ceil * 1000
}
puts amount