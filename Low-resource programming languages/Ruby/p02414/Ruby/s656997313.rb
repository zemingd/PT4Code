n, m, l = gets.split.map{|v|
      v.to_i
}
a = Array.new
b = Array.new
c = Array.new(n){ Array.new(l) }

for i in 1..n
  a[i-1] = gets.split(" ").map(&:to_i)
end

for j in 1..m
  b[j-1] = gets.split(" ").map(&:to_i)
end

o = 0
for i in 1..n
  for j in 1..l
    for k in 1..m
      o += a[i-1][k-1] * b[k-1][j-1]
    end
    c[i-1][j-1] = o
    o = 0
  end
end

for i in 1..n
  for j in 1..l
    print " " unless j == 1
    print c[i-1][j-1]
  end
  print "\n"
end
