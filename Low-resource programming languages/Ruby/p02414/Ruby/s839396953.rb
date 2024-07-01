a = []
b = []
n,m,l = gets.chomp.split(" ").map{|x| x.to_i}
for i in 1..n do
  a[i-1] = gets.chomp.split(" ").map{|x| x.to_i}
end
for j in 1..m do
  b[j-1] = gets.chomp.split(" ").map{|x| x.to_i}
end

for i in 1..n do
  c = [0]*l
  for k in 1..l do
    for j in 1..m do
      c[k-1] += a[i-1][j-1] * b[j-1][k-1]
    end
  end
  printf("%s\n",c.join(" "))
end
