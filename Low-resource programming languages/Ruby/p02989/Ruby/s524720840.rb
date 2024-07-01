n = gets.to_i
d = gets.split.map(&:to_i)

x = d.sort.each_slice(d.length / 2).to_a
puts (x[1].min - x[0].max)