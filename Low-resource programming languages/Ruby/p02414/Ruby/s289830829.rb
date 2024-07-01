n,m,l = gets.split.map(&:to_i)
a = []
b = []

for i in 1..n
 a << gets.split.map(&:to_i)
end

for j in 1..m
 b << gets.split.map(&:to_i)
end

for i in 1..n
 for j in 1..l
 if j != 1
 print " "
end
 mul = 0
for k in 1..m
 mul += a[i-1][k-1] * b[k-1][j-1]
end
print mul 
end
puts "\n"

end
