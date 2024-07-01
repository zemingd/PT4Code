n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = []
for i in 1..n do
  b.push(a[i-1])
  b = b.reverse
end
print b.join