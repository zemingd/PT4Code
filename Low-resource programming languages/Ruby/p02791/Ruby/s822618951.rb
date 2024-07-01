n = gets.to_i
a = gets.split.map(&:to_i)

b = (0...n).map { |i| a[0..i].min }
p a.each.with_index.select { |x, i| x <= b[i] }.size