h1,w1 = gets.strip.split.map(&:to_i)
h2,w2 = gets.strip.split.map(&:to_i)

puts (h1-h2) * (w1-w2)