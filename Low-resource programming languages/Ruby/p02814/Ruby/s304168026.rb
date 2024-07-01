n, m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
a.uniq!

aa = a.inject { |a1, a2| (a1 * 0.5).to_i.lcm((a2 * 0.5).to_i) }

count = m > aa ? (m - aa) / (aa * 2) + 1 : 0
puts count