# frozen_string_literal: true
require 'thread'

@h, @w, @k = gets.split.map(&:to_i)
@s = @h.times.map { gets.chomp }

def left(x, y)
  if y.zero? || @s[x][y - 1] != '.'
    [x, y]
  else
    [x, y - 1]
  end
end

def right(x, y)
  if y == @w - 1 || @s[x][y + 1] != '.'
    [x, y]
  else
    [x, y + 1]
  end
end

def up(x, y)
  if x.zero? || @s[x - 1][y] != '.'
    [x, y]
  else
    [x - 1, y]
  end
end

def down(x, y)
  if x == @h - 1 || @s[x + 1][y] != '.'
    [x, y]
  else
    [x + 1, y]
  end
end

def nextp(x, y)
  if y == @w - 1
    if x == @h - 1
      nil
    else
      [x + 1, 0]
    end
  else
    [x, y + 1]
  end
end

starts = []
goals = []
0.upto(@h - 1) do |i|
  0.upto(@w - 1) do |j|
    if @s[i][j] == '.'
      starts.push [i, j]
      goals.push [i, j]
    end
  end
end
max = 0

def maze(start, goal)
  return 0 if @s[start[0]][start[1]] == '#'

  q = Queue.new
  c = Array.new(@h) { Array.new(@w) { -1 } }
  c[start[0]][start[1]] = 0

  max = 0
  q.push start
  loop do
    break if q.empty?

    p = q.pop
    x = p[0]
    y = p[1]
    count = c[x][y]
    max = count if max < count

    [left(x, y), right(x, y), up(x, y), down(x, y)].each do |np|
      xx = np[0]
      yy = np[1]
      if c[xx][yy].negative?
        q.push [xx, yy]
        c[xx][yy] = count + 1
      end
    end
  end
  max
end

starts.each do |start|
  d = maze(start, start)
  max = d if max < d
end

puts max
