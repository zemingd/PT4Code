require 'thread'
$h, $w = gets.split.map(&:to_i)
$c = []
$h.times do
  $c.push gets.chomp.split('')
end

def up(ary)
  x = ary.first
  y = ary.last
  if x > 0
    [x - 1, y]
  else
    [x, y]
  end
end

def down(ary)
  x = ary.first
  y = ary.last
  if x < $h - 1
    [x + 1, y]
  else
    [x, y]
  end
end

def left(ary)
  x = ary.first
  y = ary.last
  if y > 0
    [x, y - 1]
  else
    [x, y]
  end
end

def right(ary)
  x = ary.first
  y = ary.last
  if y < $w - 1
    [x, y + 1]
  else
    [x, y]
  end
end

def start
  0.upto($h - 1) do |i|
    0.upto($w - 1) do |j|
      return [i, j] if $c[i][j] == 's'
    end
  end
end

s = []

q = Queue.new

0.upto($h - 1) do |i|
  0.upto($w - 1) do |j|
    if $c[i][j] == '#'
      q.push([i,j])
      s.push [i, j]
      $c[i][j] = 0
    end
  end
end

p = q.pop
max = 0
loop do
  [up(p),down(p),left(p),right(p)].each do |e|
    x = e.first
    y = e.last
    case $c[x][y]
    when '.'
      q.push(e)
      count = $c[p.first][p.last] + 1
      max = count if max < count
      $c[x][y] = count
    end
  end
  break if q.empty?

  p = q.pop
end
puts max
