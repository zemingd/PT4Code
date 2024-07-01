def lamp(grid, h, w)
  rl = Array.new(h) { Array.new(w) }
  lr = Array.new(h) { Array.new(w) }
  tb = Array.new(h) { Array.new(w) }
  bt = Array.new(h) { Array.new(w) }

  0.upto(h - 1) do |i|
    rl_count = 0
    lr_count = 0
    0.upto(w - 1) do |j|
      if grid[i][j] == '#'
        rl[i][j] = 0
        rl_count = 0
      else
        rl_count += 1
        rl[i][j] = rl_count
      end

      jj = w - 1 - j
      if grid[i][jj] == '#'
        lr[i][jj] = 0
        lr_count = 0
      else
        lr_count += 1
        lr[i][jj] = lr_count
      end
    end
  end

  0.upto(w - 1) do |j|
    bt_count = 0
    tb_count = 0
    0.upto(h - 1) do |i|
      if grid[i][j] == '#'
        bt[i][j] = 0
        bt_count = 0
      else
        bt_count += 1
        bt[i][j] = bt_count
      end

      ii = h - 1 - i
      if grid[ii][j] == '#'
        tb[ii][j] = 0
        tb_count = 0
      else
        tb_count += 1
        tb[ii][j] = tb_count
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
