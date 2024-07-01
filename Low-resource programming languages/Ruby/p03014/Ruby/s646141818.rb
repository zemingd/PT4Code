def lamp(grid, h, w)
  rl = Array.new(h) { Array.new(w) }
  lr = Array.new(h) { Array.new(w) }
  tb = Array.new(h) { Array.new(w) }
  bt = Array.new(h) { Array.new(w) }

  0.upto(h - 1) do |i|
    count = 0
    0.upto(w - 1) do |j|
      if grid[i][j] == '#'
        rl[i][j] = 0
        count = 0
      else
        count += 1
        rl[i][j] = count
      end
    end
  end

  0.upto(h - 1) do |i|
    count = 0
    (w - 1).downto(0) do |j|
      if grid[i][j] == '#'
        lr[i][j] = 0
        count = 0
      else
        count += 1
        lr[i][j] = count
      end
    end
  end

  0.upto(w - 1) do |j|
    count = 0
    0.upto(h - 1) do |i|
      if grid[i][j] == '#'
        bt[i][j] = 0
        count = 0
      else
        count += 1
        bt[i][j] = count
      end
    end
  end

  0.upto(w - 1) do |j|
    count = 0
    (h - 1).downto(0) do |i|
      if grid[i][j] == '#'
        tb[i][j] = 0
        count = 0
      else
        count += 1
        tb[i][j] = count
      end
    end
  end

  max = 0
  0.upto(h - 1) do |i|
    0.upto(w - 1) do |j|
      unless grid[i][j] == '#'
        count = lr[i][j] + rl[i][j] + bt[i][j] + tb[i][j] - 3
        max = [max, count].max
      end
    end
  end

  max
end

h, w = gets.split.map(&:to_i)
grid = []
h.times { grid << gets.chomp.split(//) }

puts lamp(grid, h, w)