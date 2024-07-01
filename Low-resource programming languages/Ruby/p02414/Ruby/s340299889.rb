n, m, l = gets.split(" ").map(&:to_i)
a = Array.new(n).map { Array.new(m) }
b = Array.new(m).map { Array.new(l) }
c = Array.new(n, 0).map { Array.new(l, 0) }

for i in 0..(n - 1)
  a[i] = gets.split(" ").map(&:to_i)
end

for i in 0..(m - 1)
  b[i] = gets.split(" ").map(&:to_i)
end

for i in 0..(n - 1)
  for j in 0..(l - 1)
    for k in 0..(m - 1)
      c[i][j] += a[i][k] * b[k][j]
    end
  end
end

for i in 0..(n - 1)
  puts c[i].to_s.gsub(/[\[\,\]]/, "")
end