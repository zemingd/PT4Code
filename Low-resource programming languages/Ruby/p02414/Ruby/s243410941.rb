n,m,l = gets.split(" ").map(&:to_i)

a = n.times.map { gets.split(" ").map(&:to_i) }
b = m.times.map { gets.split(" ").map(&:to_i) }

ret = n.times.map {|i|
  l.times.map {|j|
    m.times.map {|k| a[i][k] * b[k][j] }.reduce(:+)
  }.join(" ")
}.join("\n")

puts ret