p, q, r = gets.split(" ").map(&:to_i)
sums = []
sums.push(p + q)
sums.push(p + r)
sums.push(q + r)
puts sums.min