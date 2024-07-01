a0, a1, b0, b1 = gets.split.map(&:to_i)

both = [a0, b0].max...[a1, b1].min
p both.size
