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

starts = (0..(@h - 1)).to_a.product((0..@w - 1).to_a)
max = 0

def maze(start, goal)
  return 0 if @s[start[0]][start[1]] == '#' || @s[goal[0]][goal[1]] == '#' || start == goal

  q = Queue.new
  c = Array.new(@h) { Array.new(@w) { -1 } }
  c[start[0]][start[1]] = 0

  q.push start
  loop do
    break if q.empty?

    p = q.pop
    x = p[0]
    y = p[1]
    count = c[x][y]
    return count if x == goal[0] && y == goal[1]

    [left(x, y), right(x, y), up(x, y), down(x, y)].each do |np|
      xx = np[0]
      yy = np[1]
      if c[xx][yy].negative?
        q.push [xx, yy]
        c[xx][yy] = count + 1
      end
    end
  end
end

starts.each do |start|
  break if start[0] == @h - 1 && start[1] == @w - 1

  goal = start
  loop do
    np = nextp(goal[0], goal[1])
    break if np.nil?

    goal = np
    d = maze(start, goal)
    max = d if max < d
  end
end

puts max
