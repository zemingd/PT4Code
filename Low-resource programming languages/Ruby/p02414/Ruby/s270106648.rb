n, m, l = gets.split(" ").map(&:to_i)

a = Array.new(n).map{Array.new(m+1, 0)}
b = Array.new(m+1).map{Array.new(l, 0)}
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