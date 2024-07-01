h, w  = gets.split.map(&:to_i)
grid  = []
grids = Array.new(h).map{Array.new(w, 0)}

ans = 0

h.times do
  grid << gets.chomp.chars
end

for i in 0 .. h - 1

  cnt   = 0
  first = -1

  for j in 0 .. w - 1

    if grid[i][j] == '.'

      cnt += 1
      last = j

      if first == -1
        first = j
      end
    end

    if grid[i][j] == '#' || j == w - 1

      if cnt > 0
        for k in first .. last
          grids[i][k] += cnt
        end
      end

      cnt = 0
      first = -1

    end
  end
end

for j in 0 .. w - 1

  cnt   = 0
  first = -1

  for i in 0 .. h - 1

    if grid[i][j] == '.'

      cnt += 1
      last = i

      if first == -1
        first = i
      end
    end

    if grid[i][j] == '#' || i == h - 1

      if cnt > 0
        for k in first .. last
          ans = [grids[k][j] + cnt, ans].max
        end
      end

      cnt = 0
      first = -1

    end
  end
end

puts ans - 1
