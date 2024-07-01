# frozen_string_literal: true

N, Q = gets.chomp.split(' ').map(&:to_i)

children = Array.new(N) { [] }
points = Array.new(N, 0)

(N - 1).times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  children[a - 1] << b - 1
  children[b - 1].push(a - 1)
end

Q.times do
  q, x = gets.chomp.split(' ').map(&:to_i)
  points[q - 1] += x
end

queue = [0]
finished = Array.new(N, false)
while queue.size.positive?
  node = queue.pop
  finished[node] = true
  children[node].each do |child|
    next if finished[child]

    points[child] += points[node]
    queue.push(child)
  end
end

puts points.join(' ')
