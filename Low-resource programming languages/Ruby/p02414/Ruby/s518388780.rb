n, m, l = gets.split(" ").map(&:to_i)

a = []
b = []

for i in 1..n
  a.push(gets.split(" ").map(&:to_i))
end

for i in 1..m
  b.push(gets.split(" ").map(&:to_i))
end

for i in 0..n-1
  rr = []
  for k in 0..l-1
    d = 0
    for j in 0..m-1
      d += a[i][j] * b[j][k]
    end
    rr.push(d)
  end
  puts rr.join(" ")
end

