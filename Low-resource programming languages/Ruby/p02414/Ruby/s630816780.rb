n,m,l = gets.split.map(&:to_i)
m1 = []
m2 = []
m3 = []

for i in 1..n
m1.push(gets.split.map(&:to_i))
end

for i in 1..m
m2.push(gets.split.map(&:to_i))
end


for i in 1..n
temp = []
for j in 1..l

sum = 0
for k in 1..m
sum += (m1[i-1][k-1])*(m2[k-1][j-1])
end

temp.push(sum)

end

m3.push(temp)

end

for i in 1..n

puts m3[i-1].join(" ")

end
