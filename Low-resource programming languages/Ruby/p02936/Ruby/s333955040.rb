N, Q = gets.split.map(&:to_i)
adages = Array.new(N + 1) do
  Array.new
end
(N - 1).times do
  a, b = gets.split.map(&:to_i)
  adages[a] << b
  adages[b] << a
end
v = Array.new(N + 1, 0)
Q.times do
  posi, point = gets.split.map(&:to_i)
  v[posi] += point
end

stack = [[1, 0]]
w = Array.new(N + 1, -1)
w[0] = 0

while (!stack.empty?)
  pos, parent = stack.pop
  w[pos] = v[pos] + w[parent]
  adages[pos].each do |t|
    next if w[t] != -1
    stack.push([t, pos])
  end
end
puts w[1..N].join(' ')
