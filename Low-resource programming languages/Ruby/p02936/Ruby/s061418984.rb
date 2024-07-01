n, q = gets.split.map(&:to_i)
a = []
b = []
for i in 0...(n - 1) do
  a[i], b[i] = gets.split.map(&:to_i)
end
p = []
x = []
node = Array.new(n, 0)
for j in 0...q do
  p, x = gets.split.map(&:to_i)
  node[p - 1] += x
end
for i in 0...(n - 1) do
  node[b[i] - 1] += node[a[i] - 1]
end
puts node.join(" ")
