r = gets.split.map(&:to_i).sort.reverse
p 10 * r[0] + r[1] + r[2]