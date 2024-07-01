n, m, l = gets.split.map(&:to_i)

a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.split.map(&:to_i) }

a.each do |ai|
  b.transpose.each do |bj|
    print ai.zip(bj).map {|i, j| i * j }.inject(:+), ' '
  end
  puts
end