n,m,l = gets.split.map {|s| s.to_i}
a = Array.new
b = Array.new
for i in 1..n
  c = gets.split.map {|s| s.to_i}
  a.push(c)
end
for j in 1..m
  c = gets.split.map {|s| s.to_i}
  b.push(c)
end
for i in 1..n
  for j in 1..l
    print " " unless j == 1
    s = 0
    for k in 1..m
      s += a[i-1][k-1] * b[k-1][j-1]
    end
    print s
  end
  print "\n"
end