n,m,l=gets.split.map(&:to_i)

a = n.times.map{gets.split.map(&:to_i)}
b = m.times.map{gets.split.map(&:to_i)}

c = n.times.map{|i|
  l.times.map{|j|
    m.times.reduce(0){|r,k| r + a[i][k] * b[k][j] }
  }
}

puts c.map{|l|l.join(' ')}.join("\n")

