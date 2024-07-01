h, w = gets.split.map(&:to_i)

queue = []
arr = Array.new(h) { Array.new(w) { -1 } }
arr << Array.new(w) { 0 }
(h + 1).times { |idx| arr[idx] << 0 }

h.times do |i|
  gets.chomp.each_char.with_index do |c, j|
    if c == '#'
      queue << [i, j]
      arr[i][j] = 0
    end
  end
end

move = [[0, 1], [1, 0], [-1, 0], [0, -1]]
count = h * w - queue.size
turn = 0

while count != 0
  queue.size.times do
    x, y = queue.shift

    move.each do |u, v|
      next if arr[x + u][y + v].zero?

      arr[x + u][y + v] = 0
      queue << [x + u, y + v]
    end
  end

  count -= queue.size
  turn += 1
end

puts turn