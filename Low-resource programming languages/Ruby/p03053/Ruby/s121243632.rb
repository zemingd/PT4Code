require 'matrix'

h, w = gets.split.map(&:to_i)

queue = []
m = Matrix.build(h, w) { -1 }.hstack(Matrix.build(h, 1) { 0 }).vstack(Matrix.build(1, w + 1) { 0 })

h.times do |i|
  gets.chomp.each_char.with_index do |c, j|
    if c == '#'
      queue << [i, j]
      m[i, j] = 0
    end
  end
end

move = [[0, 1], [1, 0], [-1, 0], [0, -1]]
count = 0

until m.all?(&:zero?)
  queue.size.times do
    x, y = queue.shift

    move.each do |u, v|
      next if m[x + u, y + v].zero?

      m[x + u, y + v] = 0
      queue << [x + u, y + v]
    end
  end

  count += 1
end

puts count