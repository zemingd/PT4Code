# frozen_string_literal: true

# queue
class MyQueue
  def initialize(size = 100_000)
    @arr = Array.new(size)
    @head = @tail = 0
  end

  def full?
    @head == (@tail + 1) % @arr.length
  end

  def push(val)
    @arr.length *= 2 if full?
    @arr[@tail] = val
    @tail = (@tail + 1) % @arr.length
  end

  def empty?
    @head == @tail
  end

  def pop
    throw -1 if empty?
    v = @arr[@head]
    @head = (@head + 1) % @arr.length
    v
  end

  def maxsize
    arr.length
  end
end

$h, $w = gets.split.map(&:to_i)
$c = []
$h.times do
  $c.push gets.chomp.split('')
end

q = MyQueue.new(1000000)
$d = Array.new($h) { Array.new($w) { -1 } }

0.upto($h - 1) do |i|
  0.upto($w - 1) do |j|
    if $c[i][j] == '#'
      q.push([i, j])
      $d[i][j] = 0
    end
  end
end

p = q.pop
max = 0
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
loop do
  xx = p[0]
  yy = p[1]
  0.upto(3) do |i|
    x = xx + dx[i]
    y = yy + dy[i]
    next if x.negative? || x > $h - 1 || y.negative? || $w - 1 < y || $d[x][y] >= 0

    next unless $c[x][y] == '.'

    q.push([x, y])
    count = $d[xx][yy] + 1
    max = count if max < count
    $d[x][y] = count
  end
  break if q.empty?

  p = q.pop
end
puts max
