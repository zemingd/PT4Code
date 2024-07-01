h1,w1 = gets.split(" ").map(&:to_i)
h2,w2 = gets.split(" ").map(&:to_i)

ans = (h1*w1) - ((h2 * w1) + (w2 * h1) - (h2 * w2))

puts ans

