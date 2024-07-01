n, m, l = gets.split.map(&:to_i)

a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.split.map(&:to_i) }
b_t = b.transpose

a.each do |ai|
  row = b_t.map do |bj|
    ai.zip(bj).map {|i, j| i * j }.inject(:+)
  end
  puts row.join(' ')
end