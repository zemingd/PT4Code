require 'thread'

$h, $w = gets.split.map(&:to_i)
$c = []
$h.times do
  $c.push gets.chomp.split('')
end

q = Queue.new

0.upto($h - 1) do |i|
  0.upto($w - 1) do |j|
    if $c[i][j] == '#'
      q.push([i, j])
      $c[i][j] = 0
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
    next if x < 0 || x > $h - 1 || y < 0 || $w - 1 < y

    if $c[x][y] == '.'
      q.push([x, y])
      count = $c[xx][yy] + 1
      max = count if max < count
      $c[x][y] = count
    end
  end
  break if q.empty?

  p = q.pop
end
puts max
