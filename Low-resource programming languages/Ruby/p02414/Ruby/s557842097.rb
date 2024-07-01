n, m, l = gets.split(" ").map(&:to_i)

a = []
b = []
c = Array.new(n).map{Array.new(l, 0)}

n.times { |d|
  a[d] = gets.split.map(&:to_i)
}

m.times { |e|
  b[e] = gets.split.map(&:to_i)
}

for i in 0..n-1
  for j in 0..l-1
    for k in 0..m-1
      c[i][j] += a[i][k] * b[k][j]
    end
  end
end

n.times { |l|
  puts c[l].join(" ")
} 