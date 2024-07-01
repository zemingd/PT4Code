n,m,l = gets.split(" ").map(&:to_i)

a = n.times.map { gets.split(" ").map(&:to_i) }
b = m.times.map { gets.split(" ").map(&:to_i) }

ret = 1.upto(n).map {|i|
  1.upto(l).map {|j|
    1.upto(m) {|k| a[i][k] * b[k][j] }.reduce(:+)
  }.join(" ")
}.join("\n")

puts ret